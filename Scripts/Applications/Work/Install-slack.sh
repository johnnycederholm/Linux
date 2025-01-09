#!/bin/bash
source ./Scripts/Applications/Versions.sh

echo "Install Slack..."

wget https://downloads.slack-edge.com/desktop-releases/linux/x64/${SLACK_VERSION}/slack-desktop-${SLACK_VERSION}-amd64.deb -q -O slack-desktop-${SLACK_VERSION}-amd64.deb
apt install -y ./slack-desktop-${SLACK_VERSION}-amd64.deb
rm slack-desktop-${SLACK_VERSION}-amd64.deb