#!/bin/bash

set -e

cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "validate plugin install" sf plugins | grep "@jayree/sfdx-plugin-manifest"
check "validate zshrc" cat /home/vscode/.zshrc | grep "SF_AC_ZSH_SETUP_PATH"
check "validate autocomplete for plugin commands" cat /home/vscode/.cache/sf/autocomplete/functions/zsh/_sf | grep "_sf_jayree_manifest_git"

# Report result
reportResults
