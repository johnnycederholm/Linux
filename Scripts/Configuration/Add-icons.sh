#!/bin/bash
source ./Common.sh

info "Copy icons..."
mkdir -p ~/.local/share/icons/ && tar xzf ~/Linux/Icons/Papirus.tar.gz -C ~/.local/share/icons/