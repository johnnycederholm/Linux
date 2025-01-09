#!/bin/pwsh
curl -s https://ohmyposh.dev/install.sh | bash -s

New-Item -Path $PROFILE -Type File -Force
echo "oh-my-posh init pwsh | Invoke-Expression" >> $PROFILE

oh-my-posh font install cascadiamono