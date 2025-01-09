#!/bin/bash
source ./Common.sh

applications=(
    firefox-esr
)

info "Uninstall applications"

for application in "${applications[@]}";do
    apt remove -y ${application}
done

apt autoremove
