#!/bin/bash
sudo apt update && sudo apt install -y git
git clone https://github.com/johnnycederholm/Linux.git

echo "Make scripts executable..."
find ./ -maxdepth 5 -type f -name \*.sh -exec chmod --changes +x {} \;
find ./ -maxdepth 5 -type f -name \*.ps1 -exec chmod --changes +x {} \;