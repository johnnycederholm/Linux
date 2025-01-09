#!/bin/bash
source ./Common.sh
source ./Scripts/Applications/Github.sh

info "Install Draw.io Desktop"

installGitHubReleasedPackage https://api.github.com/repos/jgraph/drawio-desktop/releases
