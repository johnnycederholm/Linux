#!/bin/bash
source ./Scripts/Applications/Versions.sh

echo "Install Dropbox..."

wget https://linux.dropboxstatic.com/packages/ubuntu/dropbox_${DROPBOX_VERSION}_amd64.deb
apt install -y ./dropbox_${DROPBOX_VERSION}_amd64.deb
rm -rf dropbox_${DROPBOX_VERSION}_amd64.deb