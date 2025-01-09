#!/bin/bash
echo "Generate SSH keys"

if [ ! -f "$HOME/.ssh/id_rsa" ];then
    ssh-keygen -t rsa -f "$HOME/.ssh/id_rsa" -q -N "" -b 4096 -C "$(hostname)"
fi

if [ ! -f "$HOME/.ssh/id_ed25519" ];then
    ssh-keygen -t ed25519 -f "$HOME/.ssh/id_ed25519" -q -N "" -C "$(hostname)"
fi

ssh-add "$HOME/.ssh/id_rsa"
ssh-add "$HOME/.ssh/id_ed25519"
