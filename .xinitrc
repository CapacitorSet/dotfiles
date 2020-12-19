#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# export MOZ_X11_EGL=1

# Startup stuff
/usr/lib/xfce4/notifyd/xfce4-notifyd &
firefox-nightly &
telegram-desktop &
sh -c 'LANG=it_IT.utf8 thunderbird' & # For Italian date format
/usr/lib/kdeconnectd &
# Set custom keyboard layout
setxkbmap xy
# Hide the mouse
unclutter --timeout 1 --ignore-scrolling &
# Set wallpaper
# feh --bg-fill ~/dotfiles/wallpaper-1366x768.jpg
# feh --bg-fill ~/dotfiles/Torino.jpg
# feh --bg-fill ~/dotfiles/gagarin.jpg
feh --bg-fill ~/dotfiles/D1VAtWX.jpg
# Dunst (notification manager)
# dunst -conf ~/dotfiles/dunstrc &
# systemctl --user start xfce4-notifyd &
# Auto-mount
udiskie &
# NetworkManager tray icon
nm-applet &
redshift -l 45.517:9.192 &
stretchly &

eval $(ssh-agent)
export SSH_AUTH_SOCK

setxkbmap it
numlockx on
exec i3
