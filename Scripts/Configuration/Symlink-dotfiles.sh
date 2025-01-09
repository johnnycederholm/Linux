#!/bin/bash
kdeDotfiles=(
    dolphinrc
    filetypesrc
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

ln -s -f ~/Linux/Dotfiles/KDE/Konsole/Bash.profile ~/.local/share/konsole/Bash.profile
ln -s -f ~/Linux/Dotfiles/KDE/Konsole/PowerShell.profile ~/.local/share/konsole/PowerShell.profile