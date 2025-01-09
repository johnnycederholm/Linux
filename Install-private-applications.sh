#!/bin/bash
source ./Common.sh

scripts=(
    ./Scripts/Applications/Common/*
    ./Scripts/Applications/Private/*
)

for file in "${scripts[@]}";do
    if [ -f $file ]; then
        ${file}
    fi
done

reboot