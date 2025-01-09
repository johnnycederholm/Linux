#!/bin/bash
source ./Common.sh

info "Install VirtualBox..."

apt install -y virtualbox virtualbox-ext-pack
adduser johnny vboxusers