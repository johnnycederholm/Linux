#!/bin/bash
source ./Applications/Github.sh

echo "Install Bitwarden..."

installGitHubReleasedPackage https://api.github.com/repos/bitwarden/clients/releases
