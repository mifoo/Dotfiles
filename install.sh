#!/bin/sh
xbps-install sway Waybar wofi wpgt pipewire zsh seatd mesa-dri kitty neofetch vscode steam 
ln -s /etc/sv/seatd/ /var/service/
sv up seatd

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

./install

sleep 10

reboot
