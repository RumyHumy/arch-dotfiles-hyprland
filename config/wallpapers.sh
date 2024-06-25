#!/bin/bash

wallpaper_index=$1

cd ~
wallpaper_folder='dotfiles/res/wallpapers'
wallpaper=$wallpaper_folder"/${wallpaper_index}.png"
echo "Wallpaper: "$wallpaper
killall swww-daemon
sleep 0.5

# swww
echo "Initializing swww"
swww-daemon --format xrgb & disown
sleep 0.5

# swww startup
echo "swww startup"
swww img $wallpaper --transition-type=wipe --transition-step=1

sleep 2

# pywal
wal -i $wallpaper -e -n
