#!/bin/bash

applications=(
    firefox-esr
)

echo "Uninstall applications"

for application in "${applications[@]}";do
    apt remove -y ${application}
done

apt autoremove
