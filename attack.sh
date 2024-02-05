#!/usr/bin/env bash

[ -z $1 ] && echo Please choose classic or wallpaper && exit

[ $1 == "wallpaper" ] && xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor`xrandr | grep -w connected | awk '{print $1}'`/workspace0/\
last-image -s "/home/`whoami`/.themes/Attack/wallpaper/wallpaper.jpg" && \
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor`xrandr | grep -w connected | awk '{print $1}'`/workspace0/image-style -s 3 && exit
[ $1 == "classic" ] && \
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor`xrandr | grep -w connected | awk '{print $1}'`/workspace0/color-style -s 0 && \
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor`xrandr | grep -w connected | awk '{print $1}'`/workspace0/image-style -s 0 && \
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor`xrandr | grep -w connected | awk '{print $1}'`/workspace0/rgba1 -a -t double -t double \
-t double -t double -s 0.533333 -s 0.541176 -s 0.521569 -s 1.000000 --create && exit

[ $1 != classic ] || [ $1 != wallpaper ] && echo Please choose classic or wallpaper && exit
