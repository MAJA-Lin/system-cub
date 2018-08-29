#!/bin/bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-

# tab width
tabs 4
clear


# Title of script set
TITLE="Initial Installation Script"

# Main Function
function main {
    echo_message header "Installation start!"

    install_essential
    setup_personal_setting
    install_dev_tools
}

# Import Functions
function import_functions {
    DIR="functions"
    # iterate through the files in the 'functions' folder
    for FUNCTION in $(dirname "$0")/$DIR/*; do
        # skip directories
        if [[ -d $FUNCTION ]]; then
            continue
        # exclude markdown readmes
        elif [[ $FUNCTION == *.md ]]; then
            continue
        elif [[ -f $FUNCTION ]]; then
            # source the function file
            . $FUNCTION
        fi
    done
}

# Import main functions
import_functions
# Welcome message
echo_message welcome "$TITLE"
# Run system checks
system_checks
# Main
main