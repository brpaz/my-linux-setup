#!/usr/bin/env bash
set -eo pipefail

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

# Install Base Packages
echo -e "${Yellow}Updating system and Installing Base Packages${NC}"#
sudo dnf install -y git curl python3

echo -e "${Yellow}Installing setup dependencies${NC}"#
python3 -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt

ansible-galaxy install -r requirements.yml
ansible-galaxy collection install -r requirements.yml

echo -e "${Yellow}Running playbook${NC}"#
ansible-playbook playbooks/setup.yml --ask-become-pass

exec zsh

echo -e "${Green}Setup complete${NC}"#
