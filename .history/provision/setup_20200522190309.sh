
set -ex

cat << "EOF"
   _________       __
 /   _____/ _____/  |_ __ ________
 \_____  \_/ __ \   __\  |  \____ \
 /        \  ___/|  | |  |  /  |_> >
/_______  /\___  >__| |____/|   __/
        \/     \/           |__|
EOF


## Installs Ansible
sudo dnf update && sudo dnf install -y ansible make pip3

make setup

exec zsh

exit 0
