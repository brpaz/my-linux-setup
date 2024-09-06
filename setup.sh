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
echo -e "${Yellow}Updating system and Installing Base Packages${NC}"
sudo dnf install-y git curl

echo -e "${Yellow}Installing Nix${NC}"

curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
nix --version

nix develop --command ansible-playbook -i inventory/hosts provision/setup.yml

exec zsh

exit 0
