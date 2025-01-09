#!/bin/bash
source ./Common.sh

info "Install Lens..."

curl -fsSL https://downloads.k8slens.dev/keys/gpg | gpg --dearmor | tee /usr/share/keyrings/lens-archive-keyring.gpg > /dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/lens-archive-keyring.gpg] https://downloads.k8slens.dev/apt/debian stable main" | tee /etc/apt/sources.list.d/lens.list > /dev/null
apt update && apt install -y lens