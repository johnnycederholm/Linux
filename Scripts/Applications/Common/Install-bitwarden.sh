#!/bin/bash
source ./Common.sh
source ./Scripts/Applications/Github.sh

info "Install Bitwarden..."

installGitHubReleasedPackage https://api.github.com/repos/bitwarden/clients/releases
