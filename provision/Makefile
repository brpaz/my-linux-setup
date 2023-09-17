
.PHONY: galaxy lint setup run run-tag preview help

.DEFAULT_GOAL := help
SETUP_PLAYBOOK_PATH := "setup.yml"

galaxy: ## Install roles from ansible galaxy
	ansible-galaxy install -r requirements.yml

lint: ## Lints the ansible playbook
	ansible-lint setup.yml roles

setup: ## Run initial setup script
	pip install -r requirements.txt
	ansible-galaxy install -r requirements.yml
	ansible-playbook $(SETUP_PLAYBOOK_PATH) --ask-become-pass -i hosts

run: ## Runs the main playbook
	ansible-playbook $(SETUP_PLAYBOOK_PATH) --ask-become-pass -i hosts -v

run-tag: ## Runs the playbook for a specific tag
	ansible-playbook $(SETUP_PLAYBOOK_PATH) --ask-become-pass -i hosts --tags $(TAG)

preview: ## Preview
	ansible-playbook $(SETUP_PLAYBOOK_PATH) --ask-become-pass -i hosts --check --diff

update-system: ## Updates system packages
		ansible-playbook update-system.yml --ask-become-pass -i hosts -v

update-github: ## Updates applications downloaded from GitHub
		ansible-playbook $(SETUP_PLAYBOOK_PATH) --ask-become-pass -i hosts -v --tags "github"

help: ## Display this help screen
	@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
