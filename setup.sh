#!/usr/bin/env bash
set -eo pipefail

trap "exit" INT

NC='\033[0m'
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow

PROVISION_DIR="provision"

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
echo -e "${Yellow}Updating system and Installing Base Packages${NC}"
sudo dnf install -y git curl python3

python3 -m venv ansible_venv && source ansible_venv/bin/activate

pip install -r "${PROVISION_DIR}/requirements.txt"

ansible-galaxy install -r "${PROVISION_DIR}/requirements.yml"
ansible-playbook -i "${PROVISION_DIR}/hosts" "${PROVISION_DIR}/setup.yml"

exec zsh

exit 0
