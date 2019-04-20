#!/bin/bash 

exportDir=~/config/configs

cp ~/.bashrc $exportDir/.bashrc
cp ~/.xinitrc $exportDir/.xinitrc
cp ~/.Xresources $exportDir/.Xresources
cp ~/.xbindkeysrc $exportDir/.xbindkeysrc
cp -R ~/.config/fish $exportDir/.config/fish
cp ~/.config/chromium-flags.conf $exportDir/.config/chromium-flags.conf
cp -R ~/.config/htop $exportDir/.config/htop
cp ~/.config/libinput-gestures.conf $exportDir/.config/libinput-gestures.conf
cp -R ~/.config/polybar $exportDir/.config/polybar
cp ~/.config/redshift/redshift.conf $exportDir/.config/redshift/redshift.conf
cp -R ~/.config/rofi $exportDir/.config/rofi
cp -R ~/.config/touchegg/touchegg.conf $exportDir/.config/touchegg/touchegg.conf
cp ~/.vimrc $exportDir/.vimrc
cp ~/.config/i3/config $exportDir/.config/i3/config 
cp ~/.config/compton/compton.conf $exportDir/.config/compton/compton.conf


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
