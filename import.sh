#!/bin/bash 

cp ~/.bashrc ./configs/.bashrc
cp ~/.xinitrc ./configs/.xinitrc
cp ~/.Xresources ./configs/.Xresources
cp ~/.xbindkeysrc ./configs/.xbindkeysrc
cp ~/.config/.chromium-flags.conf ~/configs/.config/.chromium-flags.conf
cp ~/.config/htop ~/configs/.config/htop
cp ~/.config/libinput-gestures.conf ~/configs/.config/libinput-gestures.conf
cp -R ~/.config/polybar ~/configs/.config/polybar
cp ~/.config/redshift/redshift.conf ~/configs/.config/redshift/redshift.conf
cp ~/.config/rofi/config ~/configs/.config/rofi/config
cp ~/.config/touchegg/touchegg.conf ~/configs/.config/touchegg/touchegg.conf
cp ~/.vimrc ./configs/.vimrc
cp ~/.config/i3/config ./configs/.config/i3/config 
cp ~/.compton.conf ./configs/.compton.conf 


# Gentoo nethack
if [ -e ~/.nethackrc ]; then
    cp ~/.nethackrc ./configs/nethackrc
fi

if [ -e /etc/nethackrc ]; then
    cp /etc/nethackrc ./configs/.nethackrc
fi

if [ -e /usr/games/nethack/NetHack.ad ]; then
    cp /usr/games/nethack/NetHack.ad ./configs/NetHack.ad 
fi 
