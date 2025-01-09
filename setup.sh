#!/usr/bin/env bash
set -eo pipefail

# Trap Ctrl+C and exit
trap "exit" INT

# Color Variables
NC='\033[0m'
Red='\033[0;31m'    # Red
Green='\033[0;32m'  # Green
Yellow='\033[0;33m' # Yellow

# Display ASCII art
cat <<"EOF"
   _________       __
 /   _____/ _____/  |_ __ ________
 \_____  \_/ __ \   __\  |  \____ \
 /        \  ___/|  | |  |  /  |_> >
/_______  /\___  >__| |____/|   __/
        \/     \/           |__|
EOF

echo -e "${Yellow}Updating the base system and installing required dependencies${NC}"

# Install Base Packages (ensure development tools and dependencies are included)
echo -e "${Yellow}Installing essential packages: git, curl, python3, development tools${NC}"
sudo dnf update && sudo dnf install -y git curl python3 dnf-plugins-core

# Install Python dependencies from requirements.txt
echo -e "${Yellow}Installing Python dependencies from requirements.txt${NC}"
pip install -r requirements.txt

# Install Ansible roles and collections
echo -e "${Yellow}Installing Ansible roles and collections from requirements.yml${NC}"
ansible-galaxy install -r requirements.yml
ansible-galaxy collection install -r requirements.yml

# Setup dotfiles playbook
echo -e "${Yellow}Setting up dotfiles${NC}"
ansible-playbook playbooks/dotfiles.yml --ask-become-pass

# Run Ansible playbook for setup
echo -e "${Yellow}Running Ansible playbook for setup${NC}"
ansible-playbook playbooks/setup.yml --ask-become-pass

# Set Zsh as the default shell for the session
echo -e "${Yellow}Switching to Zsh${NC}"
exec zsh

# Final message
echo -e "${Green}Setup complete!${NC}"
