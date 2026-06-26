#!/bin/bash
current=$(grep 'theme = ' ~/.config/walker/config.toml | cut -d'"' -f2)
if [ "$current" = "Orange" ]; then
    sed -i 's/theme = "Orange"/theme = "Green"/' ~/.config/walker/config.toml
    awww img ~/Pictures/Wallpapers/green.png --transition-type wipe --transition-angle 45 --transition-duration 1
else
    sed -i 's/theme = "Green"/theme = "Orange"/' ~/.config/walker/config.toml
    awww img ~/Pictures/Wallpapers/orange.png --transition-type wipe --transition-angle 45 --transition-duration 1
fi