#!/usr/bin/env sh
# ======================================================================
# This script can be used to Backup an Ulauncher extension,
# including settings, shortcuts and extensions.
# ======================================================================

# Global variables
ULAUNCHER_EXTENSTIONS_PATH="$HOME/.local/share/ulauncher/extensions"
ULAUNCHER_CONFIG_PATH="$HOME/.config/ulauncher"
BACKUP_SUBPATH="ulauncher"

error() {
    RED="\033[0;31m"
    NC="\033[0m" # No Color
    printf "${RED}${1} ${NC}\n"
}

info() {
    YELLOW="\033[1;33m"
    NC="\033[0m" # No Color
    printf "${YELLOW}${1} ${NC}\n"
}

# ===============================
# Display help
# ==============================
help()
{
    cat <<HELP_USAGE
    This script can be used to backup and restore an Ulauncher install, including settings and extensions.

    BACKUP_PATH="/my/backup/location" $0 [--restore]

   --restore To restore instead of backup.
HELP_USAGE
  exit 2
}

# ============================================================
# Validates the presence of the required envrionment variables
# ============================================================
validate_args() {
    if [[ -z "${BACKUP_PATH}" ]]; then
        error "No backup path specified"
        exit 1
    fi

    if [ ! -d "$BACKUP_PATH" ]; then
        error "Backup directory ${BACKUP_PATH} does not exist"
        exit 1
    fi
}

# ============================================================
# Function that copies the Ulauncher extensions
# and settings directories, from the source directory
# to the backup destination specified using the "BACKUP_PATH"
# envrionment variable
# ============================================================
backup()
{
    validate_args

    BACKUP_FULL_PATH="${BACKUP_PATH}/${BACKUP_SUBPATH}"

    mkdir -p ${BACKUP_FULL_PATH}

    info "Backing up extensions"
    rsync -azP --delete ${ULAUNCHER_EXTENSTIONS_PATH} ${BACKUP_FULL_PATH}

    info "Backing up settings"
    rsync -azP --delete ${ULAUNCHER_CONFIG_PATH} ${BACKUP_FULL_PATH}
}

# ============================================================
# Restores a previously backup to the respective Ulauncher
# directories
# ============================================================
restore() {

    validate_args

    BACKUP_FULL_PATH=${BACKUP_PATH}/${BACKUP_SUBPATH}

    info "Restoring extensions"
    rsync -azP ${BACKUP_FULL_PATH} ${ULAUNCHER_EXTENSTIONS_PATH}

    info "Restoring settings settings"
    rsync -azP ${BACKUP_FULL_PATH}  ${ULAUNCHER_CONFIG_PATH}
}

while [ : ]; do
  case "$1" in
    --restore)
        restore
        break
        ;;
    -h | --help)
        help;;
    *) backup
       exit 0
        ;;
  esac
done


