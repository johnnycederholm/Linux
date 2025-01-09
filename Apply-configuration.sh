#!/bin/bash
source ./Common.sh

scripts=(
    ./Configuration/*.sh
)

for file in "${scripts[@]}";do
    if [ -f $file ]; then
        ${file}
    fi
done



reboot