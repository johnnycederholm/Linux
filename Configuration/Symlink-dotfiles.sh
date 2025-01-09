#!/bin/bash
kdeDotfiles=(
    dolphinrc
    kdeglobals
    kglobalshortcutsrc
    konsolerc
    kwinrc
    mimeapps.list
    plasma-org.kde.plasma.desktop-appletsrc
    plasmashellrc
)

for dotfile in "${kdeDotfiles[@]}";do
    ln -s -f ~/Linux/Dotfiles/KDE/${dotfile} ~/.config/${dotfile}
done

ln -s -f ~/Linux/Dotfiles/KDE/konsole.Bash.profile ~/.local/share/konsole/Bash.profile