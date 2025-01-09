#!/bin/bash

applications=(
    firefox-esr
)

echo "Uninstall applications"
for application in "${applications[@]}";do
    apt remove ${application}
done

apt autoremove
