#!/bin/bash
source ./Common.sh
source ./Scripts/Applications/Github.sh

info "Install Balena Etcher..."

installGitHubReleasedPackage https://api.github.com/repos/balena-io/etcher/releases
