
set -ex

## Installs Ansible
sudo dnf update && sudo dnf install -y ansible make pip3

make setup

exec zsh

exit 0
