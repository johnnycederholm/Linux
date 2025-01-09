#!/bin/bash
source ./Common.sh

scripts=(
    ./Applications/Common/*
    ./Applications/Private/*
)

for file in "${scripts[@]}";do
    if [ -f $file ]; then
        ${file}
    fi
done

reboot