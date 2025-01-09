#!/bin/bash
applications=(
    jq
    yq
    curl
    gpg
    shellcheck
)

echo "Installing base applications..."

apt update 

for application in "${applications[@]}";do
    apt install -y ${application}
done