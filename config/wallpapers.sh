#!/bin/bash
cd ~
wallpaper_folder='/dotfiles/res/wallpapers'
wallpaper='/home/'$(whoami)$wallpaper_folder'/2.png'
echo "Wallpaper: "$wallpaper
killall swww-daemon
sleep 0.5

# swww
echo "Initializing swww"
swww-daemon --format xrgb & disown
sleep 0.5

# swww startup
echo "swww startup"
swww img $wallpaper --transition-type=outer
