#!/usr/bin/env bash

source venv/bin/activate

ansible-galaxy install -r requirements.yml

ansible-galaxy collection install -r requirements.yml
