#!/bin/bash
source ./Applications/Github.sh

echo "Install PowerShell Core"
installGitHubReleasedPackage https://api.github.com/repos/PowerShell/PowerShell/releases
