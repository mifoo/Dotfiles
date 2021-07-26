#!/usr/bin/env bash
wpg -m
cd "$(dirname "$0")" || exit
sh ./makeStyle.sh``
/home/albin/.local/bin/pywalfox update
gsettings set org.gnome.desktop.interface gtk-theme "FlatColor"
gsettings set org.gnome.desktop.interface icon-theme "FlattrColor"
