#!/bin/bash
kdeDotfiles=(
    dolphinrc
    kdeglobals
    kglobalshortcutsrc
    kwinrc
    mimeapps.list
    plasma-org.kde.plasma.desktop-appletsrc
    plasmashellrc
)

for dotfile in "${kdeDotfiles[@]}";do
    ln -s -f ~/Linux/Dotfiles/KDE/${dotfile} ~/.config/${dotfile}
done
