#!/bin/bash
source ./Common.sh
source ./Scripts/Applications/Github.sh

info "Install Obsidian..."

installGitHubReleasedPackage https://api.github.com/repos/obsidianmd/obsidian-releases/releases
