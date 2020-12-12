#!/bin/bash
#set -o xtrace #enables debug

source ./ci-helpers.sh

log_task "Publish the latest version of the extension"

SECRETS=publish/personal.secret && test -f $SECRETS && source $SECRETS
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

if [ $# -eq 0 ] || [ "$1" = "" ]; then
    echo "Expected parameter with version number"
    exit 1;
else
    target_version=$1
    echo_green "Publishing version $1"
fi

eval "vsce publish -p $PUBLISHER_TOKEN $target_version"
