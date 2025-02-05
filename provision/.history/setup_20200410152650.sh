
set -e

## Installs Ansible
sudo dnf update && sudo dnf install -y ansible make pip3

ansible --version

sudo pip3 install -r requirements.txt

make galaxy

make play

exec zsh

exit 0
