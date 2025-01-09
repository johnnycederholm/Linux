#!/bin/bash
source ./Common.sh
source ./Scripts/Applications/Versions.sh

info "Install Dropbox..."

wget https://linux.dropboxstatic.com/packages/ubuntu/dropbox_${DROPBOX_VERSION}_amd64.deb
apt install -y ./dropbox_${DROPBOX_VERSION}_amd64.deb
rm -rf dropbox_${DROPBOX_VERSION}_amd64.deb