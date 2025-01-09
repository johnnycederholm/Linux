#!/bin/bash
source ./Common.sh

scripts=(
    ./Scripts/Configuration/*.sh
    ./Scripts/Configuration/*.ps1
)

for file in "${scripts[@]}";do
    if [ -f $file ]; then
        ${file}
    fi
done

reboot