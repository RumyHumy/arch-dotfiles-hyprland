#!/bin/bash
sudo pacman -Sy
sudo pacman -S waybar \
    rofi-wayland \ # Menu for apps & other
    git github-cli \
    tzdata \ # For current timezone
    wf-recorder \ # For screen capture
    ttf-dejavu noto-fonts noto-fonts-emoji otf-font-awesome
yay -S hyprland \
    swww \
    pywal
mkdir ~/recordings
sudo touch /bin/lesgo
sudo chmod +x /bin/lesgo
echo "~/dotfiles/launch.sh" | sudo tee /bin/lesgo
timedatectl set-timezone Europe/Moscow
gh auth login
