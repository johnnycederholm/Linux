#!/bin/bash
source ./Common.sh

scripts=(
    ./Configuration/*.sh
    ./Configuration/*.ps1
)

for file in "${scripts[@]}";do
    if [ -f $file ]; then
        ${file}
    fi
done

reboot