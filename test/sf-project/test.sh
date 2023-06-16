#!/bin/bash

set -e

cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "validate zshrc" cat /home/vscode/.zshrc | grep "SF_AC_ZSH_SETUP_PATH"

# Report result
reportResults
