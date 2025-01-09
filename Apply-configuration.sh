#!/bin/bash
source ./Common.sh

scripts=(
    ./Configuration/*
)

for file in "${scripts[@]}";do
    if [ -f $file ]; then
        /bin/bash ${file}
    fi
done

reboot