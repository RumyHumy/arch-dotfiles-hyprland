#!/bin/bash

cd ~/dotfiles/config
colors=()

while IFS='' read -r line; do
    colors+=("${line//\#/}")
done < ~/.cache/wal/colors

generate() {
    echo "Replacing colors in file \"$1.nocolors\""
    contents=`cat $1.nocolors`
    for i in {0..15}
    do
        contents="${contents//\{COL$i\}/${colors[i]}}"
	# echo "contents $i: $contents"
    done
    echo "$contents" > $1
}

generate "hypr/hyprland.conf"
# generate text
