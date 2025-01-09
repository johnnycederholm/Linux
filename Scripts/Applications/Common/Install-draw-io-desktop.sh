#!/bin/bash
source ./Scripts/Applications/Github.sh

echo "Install Draw.io Desktop"

installGitHubReleasedPackage https://api.github.com/repos/jgraph/drawio-desktop/releases
