#!/bin/bash

# Liste des thèmes — ajoute les tiens ici
themes=("orange" "green" "blue" "pink")

declare -A cursors=(
    ["orange"]="Adisila Leony"
    ["green"]="Ceres Fauna"
    ["blue"]="Hatsune Miku"
    ["pink"]="Momo Otako"
)

# Thème actuel
current=$(grep 'theme = ' ~/.config/walker/config.toml | cut -d'"' -f2)

# Trouve l'index actuel
for i in "${!themes[@]}"; do
    if [ "${themes[$i]}" = "$current" ]; then
        current_index=$i
        break
    fi
done

# Passe au suivant
next_index=$(( (current_index + 1) % ${#themes[@]} ))
next="${themes[$next_index]}"

# Change le thème walker
sed -i "s/theme = \"$current\"/theme = \"$next\"/" ~/.config/walker/config.toml

# Change le wallpaper
awww img ~/.config/walker/themes/$next/$next.png --transition-type wipe --transition-angle 45 --transition-duration 1

# Installe le curseur
sudo cp -r ~/.config/walker/themes/$next/cursor /usr/share/icons/"${cursors[$next]}"
hyprctl setcursor "${cursors[$next]}" 24
gsettings set org.gnome.desktop.interface cursor-theme "${cursors[$next]}"