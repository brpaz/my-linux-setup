#!/usr/bin/env sh
# ======================================================================
# This script allows to restore user data folders from a backup location
# to the users $HOME directory.
# ======================================================================
directoriesToRestore="Code Documents Music Pictures Knowledge Dropbox Games Templates Videos"

error() {
    RED="\033[0;31m"
    NC="\033[0m" # No Color
    printf "${RED}${1} ${NC}\n"
}

info() {
    YELLOW="\033[1;33m"
    NC="\033[0m" # No Color
    printf "${YELLOW}${1} ${NC}\n"
}

# ============================================================
# Validates the presence of the required envrionment variables
# ============================================================
validate_args() {
    if [[ -z "${BACKUP_PATH}" ]]; then
        error "No backup path specified"
        exit 1
    fi

    if [ ! -d "$BACKUP_PATH" ]; then
        error "Backup directory ${BACKUP_PATH} does not exist"
        exit 1
    fi
}

validate_args

for dir in ${directoriesToRestore};
do
    info "Restoring ${dir}"
    rsync -azhP ${BACKUP_PATH}/${dir} $HOME
done
