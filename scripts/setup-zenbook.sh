#!/usr/bin/env bash

# Setup Arch Linux and prepare for dotfiles installation
set -euo pipefail

INVENTORY="${INVENTORY:-inventories/personal/hosts.ini}"

# Trap Ctrl+C and exit
trap "exit" INT

# Color Variables
NC='\033[0m'
Red='\033[0;31m'    # Red
Green='\033[0;32m'  # Green
Yellow='\033[0;33m' # Yellow

echo -e "${Yellow}Updating system packages...${NC}"
sudo pacman -Syu --noconfirm

echo -e "${Yellow}Setting up python for Ansible...${NC}"
sudo pacman -S --noconfirm python python-pip && python --version

echo -e "${Yellow}Starting virtual environment...${NC}"
python -m venv venv
source venv/bin/activate

echo -e "${Yellow}Installing pip packages...${NC}"
pip install -r requirements.txt

echo -e "${Yellow}Installing Ansible roles and collections from requirements.yml${NC}"
ansible-galaxy install -r requirements.yml
ansible-galaxy collection install -r requirements.yml

echo -e "${Yellow}Running Ansible playbook...${NC}"
ansible-playbook -i "$INVENTORY" --limit "zenbook-laptop" playbooks/zenbook.yml --ask-become-pass
