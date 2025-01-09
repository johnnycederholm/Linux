#!/bin/bash
codename=$(lsb_release --codename --short)
apt install fasttrack-archive-keyring
echo "deb https://fasttrack.debian.net/debian-fasttrack/ ${codename}-fasttrack main contrib" | tee -a /etc/apt/sources.list
echo "deb https://fasttrack.debian.net/debian-fasttrack/ ${codename}-backports-staging main contrib" | tee -a /etc/apt/sources.list
apt update