#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Startup stuff
firefox-nightly &
telegram-desktop &
thunderbird &
# Set custom keyboard layout
setxkbmap xy
# Hide the mouse
unclutter &
# Set wallpaper
# feh --bg-fill ~/dotfiles/wallpaper-1366x768.jpg
feh --bg-fill ~/dotfiles/Torino.jpg
# Dunst (notification manager)
# dunst -conf ~/dotfiles/dunstrc &

setxkbmap it
numlockx on
exec i3
