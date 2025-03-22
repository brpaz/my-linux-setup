#!/usr/bin/bash
# Setup snapper for root and home subvolumes
# This script is intended to be run after the initial installation of Fedora
# and before the first system update

set -e

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

# setup config

# create config for root
snapper -c root create-config /
snapper -c root set-config NUMBER_MIN_AGE="3600"
snapper -c root set-config NUMBER_LIMIT="50"
snapper -c root set-config TIMELINE_CREATE="yes"
snapper -c root set-config TIMELINE_CLEANUP="yes"
snapper -c root set-config TIMELINE_LIMIT_HOURLY="5"
snapper -c root set-config TIMELINE_LIMIT_DAILY="7"
snapper -c root set-config TIMELINE_LIMIT_WEEKLY="0"
snapper -c root set-config TIMELINE_LIMIT_MONTHLY="1"
snapper -c root set-config TIMELINE_LIMIT_YEARLY="0"

# create config for home
snapper -c home create-config /home
snapper -c home set-config NUMBER_MIN_AGE="3600"
snapper -c home set-config NUMBER_LIMIT="50"
snapper -c home set-config TIMELINE_CREATE="yes"
snapper -c home set-config TIMELINE_CLEANUP="yes"
snapper -c home set-config TIMELINE_LIMIT_HOURLY="5"
snapper -c home set-config TIMELINE_LIMIT_DAILY="7"
snapper -c home set-config TIMELINE_LIMIT_WEEKLY="0"
snapper -c home set-config TIMELINE_LIMIT_MONTHLY="1"
snapper -c home set-config TIMELINE_LIMIT_YEARLY="0"
