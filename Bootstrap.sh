#!/bin/bash
sudo apt update && sudo apt install -y git
git clone https://github.com/johnnycederholm/Linux.git

scripts=(
    ./Linux/**/*.sh
    ./Linux/**/*.ps1
)

# Enable expansion of subdirectories
# by using the ** glob pattern
shopt -s globstar

echo "Make scripts executable..."
for file in "${scripts[@]}";do
    if [ -f $file ]; then
        echo "$file"
        chmod +x ${file}
    fi
done