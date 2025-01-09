#!/bin/bash
source ./Common.sh

applications=(
    jq
    yq
    curl
    gpg
    shellcheck
)

info "Installing base applications..."

apt update 

for application in "${applications[@]}";do
    apt install -y ${application}
done