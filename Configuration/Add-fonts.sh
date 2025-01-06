#!/bin/bash

# Copy fonts
cp -r Fonts/ ~/.fonts

# Rebuild font cache
fc-cache -f