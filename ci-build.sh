#!/bin/bash
#set -o xtrace #enables debug

source ./ci-helpers.sh

log_task "Build the latest version of the extension"
run_step "vsce package --out publish/release.vsix"
echo_green "You can manually publish this new release at https://marketplace.visualstudio.com/manage"
