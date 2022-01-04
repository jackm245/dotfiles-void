#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
autorandr docked
feh --bg-scale /usr/share/backgrounds/void_1.png
slstatus &
# nm-applet &
# volumeicon &
# setxkbmap -option altwin:swap_alt_win
setxkbmap -option caps:swapescape
picom --experimental-backend -b
pkill dwmblocks
exec dwm
