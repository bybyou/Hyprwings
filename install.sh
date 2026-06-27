echo 'alias clr="clear; echo -en \"\e[3J\""' >> ~/.bashrc
echo 'alias clear="clear; echo -en \"\e[3J\""' >> ~/.bashrc

sudo pacman -S kitty nemo adw-gtk-theme ttf-jetbrains-mono-nerd make cmake base-devel

git clone https://aur.archlinux.org/yay-git.git
cd yay-git/
makepkg -si
cd

yay -S brave awww walker elephant elephant-desktopapplications elephant-calc elephant-websearch elephant-providerlist elephant-runner

sudo cp -r ~/Hyprwings/cursor "/usr/share/icons/Polarnight Cursors"
hyprctl setcursor "Polarnight Cursors" 24
gsettings set org.gnome.desktop.interface cursor-theme "Polarnight Cursors"

awww-daemon &>/dev/null &
sleep 0.5
awww img ~/.config/walker/themes/orange/orange.png &>/dev/null &

rm -rf ~/.config/walker; mv ~/Hyprwings/walker ~/.config/
rm -rf ~/.config/kitty; mv ~/Hyprwings/kitty ~/.config/
rm -rf ~/.config/hypr; mv ~/Hyprwings/hypr ~/.config/
hyprctl reload