#!/bin/bash
source ./Applications/Versions.sh

wget https://downloads.mongodb.com/compass/mongodb-compass_${MONGODB_COMPASS_VERSION}_amd64.deb
dpkg -i mongodb-compass_${MONGODB_COMPASS_VERSION}_amd64.deb
rm -rf mongodb-compass_${MONGODB_COMPASS_VERSION}_amd64.deb