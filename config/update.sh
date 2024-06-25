#!/bin/bash

cd ~/dotfiles/config

colors=()
while IFS='' read -r line; do
    colors+=("${line//\#/}")
done < ~/.cache/wal/colors

generate() {
    echo "Replacing colors in file \"$1\""
    contents=`cat $1`
    for i in {0..15}
    do
        contents="${contents//\{COL$i\}/${colors[i]}}"
        # echo "contents $i: $contents"
    done
    echo "$contents" > $1.colored
}

# generate text

cd ~/dotfiles/config
cp kitty/kitty.conf ~/.config/kitty
generate "rofi/theme.rasi"
cp rofi/theme.rasi.colored ~/.config/rofi/config.rasi
generate "hypr/hyprland.conf"
cp hypr/hyprland.conf.colored ~/.config/hypr/hyprland.conf

# Waybar
mkdir ~/.config/waybar
cp waybar/config ~/.config/waybar
generate "waybar/style.css"
cp waybar/style.css.colored ~/.config/waybar/style.css
generate "waybar/colors.css"
cp waybar/colors.css.colored ~/.config/waybar/colors.css

# Bashrc
cp .bashrc ~/.bashrc

killall ./wallpapers.sh
sleep 1 && ./wallpapers.sh 1 &

killall ./launch-waybar.sh
./launch-waybar.sh &
