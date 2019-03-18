#!/bin/bash 

cp ~/.vimrc ./configs/.vimrc
cp ~/.config/i3/config ./configs/.config/i3/config 
cp ~/.compton.conf ./configs/.compton.conf 

if [ -e ~/.nethackrc ]; then
    cp ~/.nethackrc ./configs/nethackrc
fi

cp ~/.Xresources ./configs/.Xresources
cp ~/.bashrc ./configs/.bashrc
cp ~/.xbindkeysrc ./configs/.xbindkeysrc 
cp ~/.xinitrc ./configs/.xinitrc

if [ -e /etc/nethackrc ]; then
    cp /etc/nethackrc ./configs/.nethackrc
fi

if [ -e ~/.nethackrc ]; then
    cp ~/.nethackrc ./config/nethackrc
fi

if [ -e /usr/games/nethack/NetHack.ad ]; then
    cp /usr/games/nethack/NetHack.ad ./configs/NetHack.ad 
fi 
