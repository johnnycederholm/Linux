#!/bin/bash

echo "Copy fonts..."
mkdir -p ~/.fonts && cp -r ~/Linux/Fonts/ ~/.fonts

# Rebuild font cache
fc-cache -f