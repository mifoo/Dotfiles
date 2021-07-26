#!/bin/sh
xbps-install sway Waybar wofi wpgt pipewire zsh seatd mesa-dri
ln -s /etc/sv/seatd/ /var/services/
sv up seatd

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

ln -sb config/* /home/albin/.config/
ln -sb .zshrc /home/albin/.zshrc

reboot
