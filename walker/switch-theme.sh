#!/bin/bash

themes=("orange" "green" "blue" "pink")

current=$(grep 'theme = ' ~/.config/walker/config.toml | cut -d'"' -f2)

for i in "${!themes[@]}"; do
    [ "${themes[$i]}" = "$current" ] && current_index=$i && break
done

next_index=$(( (current_index + 1) % ${#themes[@]} ))
next="${themes[$next_index]}"

sed -i "s/theme = \"$current\"/theme = \"$next\"/" ~/.config/walker/config.toml
awww img ~/.config/walker/themes/$next/$next.png --transition-type outer --transition-duration 1.5 --transition-fps 60