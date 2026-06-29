#!/bin/bash

themes=("orange" "green" "blue" "pink" "white")

current=$(grep 'theme = ' ~/.config/walker/config.toml | cut -d'"' -f2)

for i in "${!themes[@]}"; do
    [ "${themes[$i]}" = "$current" ] && current_index=$i && break
done

next_index=$(( (current_index + 1) % ${#themes[@]} ))
next="${themes[$next_index]}"

sed -i "s/theme = \"$current\"/theme = \"$next\"/" ~/.config/walker/config.toml
awww img ~/.config/walker/themes/$next/wallpaper.png \
    --transition-type fade \
    --transition-angle 30 \
    --transition-duration 1.5 \
    --transition-fps 60

case "$next" in
    orange) color="#ff8c00" ; ps1_color="214" ;;
    green)  color="#5faf5f" ; ps1_color="114" ;;
    blue)   color="#5f87ff" ; ps1_color="75"  ;;
    pink)   color="#ff69b4" ; ps1_color="219" ;;
    white)  color="#ffffff" ; ps1_color="255" ;;
esac

echo "@define-color theme_accent $color;" > ~/.config/waybar/theme.css
echo "$ps1_color" > ~/.cache/walker_theme_color
pkill -SIGUSR2 waybar