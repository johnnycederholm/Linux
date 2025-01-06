#!/bin/bash
apt install -y plymouth plymouth-themes firmware-linux fonts-cantarell

# Deploy Plymouth theme
unzip -q Themes/Plymouth/debian-mac-style.zip -d /usr/share/plymouth/themes/

# Use newly deployed theme
plymouth-set-default-theme -R debian-mac-style

# Set resolution
echo "GRUB_GFXMODE=1920x1080" | tee -a /etc/default/grub

# Add splash option
sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT="/&splash /' /etc/default/grub

update-grub2