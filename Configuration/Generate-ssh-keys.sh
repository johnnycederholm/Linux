#!/bin/bash
echo "Generate SSH keys"
read -p "Enter email: " email

ssh-keygen -t rsa -b 4096 -C ${email}
ssh-keygen -t ed25519 -C ${email}

ssh-add ~/.ssh/id_rsa
ssh-add ~/.ssh/id_ed25519
