#!/bin/bash

set -e

cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "zshrc" bash -c "cat /home/vscode/.zshrc | grep SF_AC_ZSH_SETUP_PATH"
check "container mode" bash -c "echo $SFDX_CONTAINER_MODE | grep true"

# Report result
reportResults
