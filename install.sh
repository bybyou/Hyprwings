echo 'alias clr="clear; echo -en \"\e[3J\""' >> ~/.bashrc
echo 'alias clear="clear; echo -en \"\e[3J\""' >> ~/.bashrc
sudo pacman -S kitty nemo adw-gtk-theme ttf-jetbrains-mono-nerd make cmake base-devel
git clone https://aur.archlinux.org/yay-git.git
cd yay-git/
makepkg -si
cd
yay -S brave awww walker elephant elephant-desktopapplications elephant-calc elephant-websearch elephant-providerlist elephant-runner
awww-daemon &
sleep 1
awww img ~/.config/walker/themes/orange/orange.png