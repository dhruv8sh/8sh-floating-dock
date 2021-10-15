#!/bin/bash
sudo pacman -Syu --noconfirm
cd $(scriptdir)
sudo pacman -S spotify yay bluej blender microsoft-edge-dev-bin intellij-idea-community yakuake tor-browser qbittorrent audacity steam-native-runtime gwenview vlc --noconfirm
yay -S spotify-adblock
