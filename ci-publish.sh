#!/bin/bash
#set -o xtrace #enables debug

source ./ci-helpers.sh

log_task "Publish the latest version of the extension"

if [ "$PUBLISHER_TOKEN" = "" ]; then
    echo_red "To publish the extension you need a personal token";
    echo_red "The environment variable PUBLISHER_TOKEN should have the value of your personal token";
    exit 1;
else
    echo_green "Found a publisher token"
fi

package_path=publish/release.vsix
if [ ! -e "$package_path" ]; then
    echo_red "To publish the extension you need to build it first";
    echo_red "Could not find the file '$package_path'";
    exit 1;
else
    echo_green "Found a build at '$package_path'"
fi

eval "vsce publish -p $PUBLISHER_TOKEN patch"
