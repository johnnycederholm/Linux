#!/bin/bash
source ./Applications/Github.sh

echo "Install Balena Etcher..."

installGitHubReleasedPackage https://api.github.com/repos/balena-io/etcher/releases
