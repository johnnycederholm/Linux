#!/bin/bash
echo "Configure Git"
read -p "Name: " username
read -p "Email: " email

git config --global user.name ${username}
git config --global user.email ${email}
git config --global core.editor "code --wait"
