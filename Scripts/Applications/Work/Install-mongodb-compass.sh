#!/bin/bash
source ./Common.sh
source ./Scripts/Applications/Versions.sh

info "Install MongoDB Compass..."

wget https://downloads.mongodb.com/compass/mongodb-compass_${MONGODB_COMPASS_VERSION}_amd64.deb
dpkg -i mongodb-compass_${MONGODB_COMPASS_VERSION}_amd64.deb
rm -rf mongodb-compass_${MONGODB_COMPASS_VERSION}_amd64.deb