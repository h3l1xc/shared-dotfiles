#!/usr/bin/env bash

lmb_height=45

xrandr --dpi 115
[ -z $(pidof transmission-daemon) ] && transmission-daemon
mocp -S
xrdb -load ~/.Xresources
xcompmgr -cfF -t-7 -l-11 -r7 -o.95 -D4 &
sh ~/.fehbg &
_lmb-status-loop | lemonbar -g x$lmb_height -f "inconsolata:size=11:weight:bold" -f "Material Icons:size=11" &
exec openbox
