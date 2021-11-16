#!/bin/bash

pacman -Syu --noconfirm awesome rofi light python3 python-pip

pip install pywal

mkdir "$HOME"/.config/awesome

# Shared tags install
git clone https://github.com/Drauthius/awesome-sharedtags.git "$HOME"/.config/awesome

git clone https://github.com/streetturtle/awesome-wm-widgets.git "$HOME"/.config/awesome

git clone https://github.com/horst3180/arc-icon-theme --depth 1
cd arc-icon-theme || exit

./autogen.sh --prefix=/usr

sudo make install

cd "$HOME" || exit

rm -rf arc-icon-theme

# Needed for backlight support
usermod -aG video $USER

