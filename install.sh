#!/usr/bin/env bash
# Provisions a machine end to end: installs base packages, clones this repo
# (unless already run from inside a clone), sets up a Python venv with
# Ansible, then prompts (via gum) for which host and playbooks to run.
#
# On a brand new Fedora or Arch install:
#
#   export GITHUB_TOKEN=<personal access token>
#   bash -c "$(curl -fsSL https://raw.githubusercontent.com/brpaz/my-linux-setup/master/install.sh)"
#
# Re-running it later from inside an existing clone (e.g. `./install.sh`)
# skips the clone step and just re-provisions.
#
# Set HOST and/or PLAYBOOKS (space-separated basenames, e.g.
# "tuxedo.yml dotfiles.yml") to skip the matching prompt.
set -euo pipefail

REPO_URL="https://github.com/brpaz/my-linux-setup.git"
INSTALL_DIR="${INSTALL_DIR:-$HOME/my-linux-setup}"
INVENTORY="${INVENTORY:-inventories/personal/hosts.ini}"

: "${GITHUB_TOKEN:?Set GITHUB_TOKEN to a GitHub personal access token before running this script (see README.md)}"

trap 'exit' INT

log_info()    { gum log --time rfc3339 --level info "$@"; }
log_warn()    { gum log --time rfc3339 --level warn "$@"; }
log_error()   { gum log --time rfc3339 --level error "$@" >&2; }
log_success() { gum log --time rfc3339 --level info --level.foreground 42 --prefix "✓" "$@"; }

if [[ ! -f /etc/os-release ]]; then
  echo "Cannot detect distro: /etc/os-release not found." >&2
  exit 1
fi
# shellcheck disable=SC1091
source /etc/os-release

case "$ID" in
  fedora)
    echo "Installing base packages..."
    sudo dnf update -y
    sudo dnf install -y git curl python3 python3-pip python3-devel dnf-plugins-core gum
    ;;
  arch)
    echo "Installing base packages..."
    sudo pacman -Syu --noconfirm
    sudo pacman -S --noconfirm git curl python python-pip gum
    ;;
  *)
    echo "Unsupported distro: $ID. This repo only supports Fedora and Arch." >&2
    exit 1
    ;;
esac

if [[ -f requirements.txt && -d playbooks ]]; then
  log_info "Already inside a clone, re-provisioning in place..."
else
  if [[ -d "$INSTALL_DIR/.git" ]]; then
    log_info "$INSTALL_DIR already exists, pulling latest changes..."
    git -C "$INSTALL_DIR" pull --ff-only
  else
    log_info "Cloning $REPO_URL to $INSTALL_DIR..."
    git clone "$REPO_URL" "$INSTALL_DIR"
  fi
  cd "$INSTALL_DIR"
fi

if [[ -z "${HOST:-}" ]]; then
  mapfile -t hosts < <(grep -vE '^\s*(\[|#|;|$)' "$INVENTORY" | sort -u)
  if [[ ${#hosts[@]} -eq 0 ]]; then
    log_error "No hosts found in $INVENTORY"
    exit 1
  fi
  limit="$(gum choose --select-if-one --header "Select host to provision" "${hosts[@]}")"
else
  limit="$HOST"
fi
log_info "Using host: $limit"

case "$limit" in
  tuxedo-laptop) default_playbooks="tuxedo.yml dotfiles.yml update-system.yml" ;;
  zenbook-laptop) default_playbooks="zenbook.yml" ;;
  *) default_playbooks="" ;;
esac

if [[ -z "${PLAYBOOKS:-}" ]]; then
  mapfile -t available_playbooks < <(find playbooks -maxdepth 1 -name '*.yml' -printf '%f\n' | sort)
  mapfile -t selected_playbooks < <(gum choose --no-limit \
    --selected="$(echo "$default_playbooks" | tr ' ' ',')" \
    --header "Select playbooks to run" "${available_playbooks[@]}")
else
  read -ra selected_playbooks <<<"$PLAYBOOKS"
fi

if [[ ${#selected_playbooks[@]} -eq 0 ]]; then
  log_error "No playbook selected, nothing to do."
  exit 1
fi

log_info "Setting up Python virtual environment..."
python3 -m venv venv
# shellcheck disable=SC1091
source venv/bin/activate
pip install -r requirements.txt

log_info "Installing Ansible roles and collections from requirements.yml..."
ansible-galaxy install -r requirements.yml
ansible-galaxy collection install -r requirements.yml

for playbook in "${selected_playbooks[@]}"; do
  log_info "Running playbooks/$playbook..."
  ansible-playbook -i "$INVENTORY" --limit "$limit" "playbooks/$playbook" --ask-become-pass
done

log_success "Setup complete!"

if [[ "$ID" == "fedora" ]]; then
  log_info "Switching to Zsh..."
  exec zsh
fi
