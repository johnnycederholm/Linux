#!/bin/bash
source ./Scripts/Applications/Github.sh

echo "Install Obsidian..."

installGitHubReleasedPackage https://api.github.com/repos/obsidianmd/obsidian-releases/releases
