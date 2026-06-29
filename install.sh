echo 'alias clr="clear; echo -en \"\e[3J\""' >> ~/.bashrc
echo 'alias clear="clear; echo -en \"\e[3J\""' >> ~/.bashrc

sudo pacman -S kitty nautilus adw-gtk-theme ttf-jetbrains-mono-nerd make cmake base-devel

git clone https://aur.archlinux.org/yay-git.git
cd yay-git/
makepkg -si
cd

yay -S brave waybar swaync awww waybar-cava walker playerctl elephant elephant-desktopapplications elephant-calc elephant-websearch elephant-providerlist elephant-runner

sudo cp -r ~/Hyprwings/cursor "/usr/share/icons/Polarnight Cursors"
hyprctl setcursor "Polarnight Cursors" 24
gsettings set org.gnome.desktop.interface cursor-theme "Polarnight Cursors"

rm -rf ~/.config/walker; mv ~/Hyprwings/walker ~/.config/
rm -rf ~/.config/kitty; mv ~/Hyprwings/kitty ~/.config/
rm -rf ~/.config/hypr; mv ~/Hyprwings/hypr ~/.config/
rm -rf ~/.config/waybar; mv ~/Hyprwings/waybar ~/.config/

awww-daemon &>/dev/null &
sleep 0.5
awww img ~/.config/walker/themes/orange/wallpaper.png &>/dev/null
hyprctl reload