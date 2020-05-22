#!/usr/bin/env sh
set -e

trap "exit" INT

NC='\033[0m'
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow

cat << "EOF"
   _________       __
 /   _____/ _____/  |_ __ ________
 \_____  \_/ __ \   __\  |  \____ \
 /        \  ___/|  | |  |  /  |_> >
/_______  /\___  >__| |____/|   __/
        \/     \/           |__|
EOF

echo -e "${Yellow}Updating base system and installing ansible and dependencies${NC}"

## Installs Ansible
sudo dnf -y update && sudo dnf install -y ansible make

make setup

exec zsh

exit 0
