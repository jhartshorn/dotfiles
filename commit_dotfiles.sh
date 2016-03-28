#!/bin/bash
git checkout mac
#Copy dotfiles to ~/.dotfiles
cp ~/.config/awesome/rc.lua ~/.dotfiles 
cp ~/.xsessionrc ~/.dotfiles 
cp ~/.zshrc ~/.dotfiles 
cp ~/.xinitrc ~/.dotfiles 
cp ~/.xbindkeysrc ~/.dotfiles 
cp ~/.zlogin ~/.dotfiles 
cp /etc/network/interfaces ~/.dotfiles

#Obfuscate wpa key
sed -i '/wpa-psk/ c\\twpa-psk XXXXXXXX' ~/.dotfiles/interfaces

#Add, commit and push to github
git add -A  
git commit
git push origin mac 
