#!/bin/bash
source ./Common.sh

info "Adding Debian FastTrack repositories..."

codename=$(lsb_release --codename --short)
apt install -y fasttrack-archive-keyring
echo "deb https://fasttrack.debian.net/debian-fasttrack/ ${codename}-fasttrack main contrib" | tee -a /etc/apt/sources.list
echo "deb https://fasttrack.debian.net/debian-fasttrack/ ${codename}-backports-staging main contrib" | tee -a /etc/apt/sources.list
apt update