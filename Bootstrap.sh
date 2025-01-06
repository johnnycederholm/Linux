#!/bin/bash
apt update && apt install -y git
git clone https://github.com/johnnycederholm/Linux.git

scripts=(
    ./Linux/*.sh
)

echo "Make scripts executable..."
for file in "${scripts[@]}";do
    if [ -f $file ]; then
        echo "$file"
        chmod +x ${file}
    fi
done