#!/bin/bash
git checkout mac
#Copy dotfiles to ~/.dotfiles
cp ~/.config/awesome/rc.lua ~/dotfiles 
cp /usr/share/awesome/themes/default/theme.lua ~/dotfiles
cp ~/.xsessionrc ~/dotfiles 
cp ~/.zshrc ~/dotfiles 
cp ~/.xinitrc ~/dotfiles 
cp ~/.xbindkeysrc ~/dotfiles 
cp ~/.zlogin ~/dotfiles 
cp /usr/share/X11/xorg.conf.d/50-macbookkb.conf ~/dotfiles
cp /etc/nsswitch.conf ~/dotfiles
cp /etc/default/crda ~/dotfiles

#Network Interfaces
cp /etc/network/interfaces ~/dotfiles
cp /etc/network/interfaces.AppleNetwork ~/dotfiles
cp /etc/network/interfaces.Apple5Ghz ~/dotfiles
#Obfuscate wpa key
sed -i '/wpa-psk/ c\\twpa-psk XXXXXXXX' ~/dotfiles/interfaces*

#Add, commit and push to github
git add -A  
git commit
git push origin mac 
