#!/bin/bash
source ./Common.sh
source ./Scripts/Applications/Github.sh

info "Install PowerShell Core"
installGitHubReleasedPackage https://api.github.com/repos/PowerShell/PowerShell/releases
