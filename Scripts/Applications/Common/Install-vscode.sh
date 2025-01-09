#!/bin/bash
source ./Common.sh

info "Install VS Code..."

apt install -y apt-transport-https
apt update
apt install -y code
