#!/bin/bash

pacman -Syu --noconfirm autoconf make cmake meson ninja gcc clang llvm

./dev-setup.sh
./fish-setup.sh
./awesome-setup.sh
./emacs-setup.sh
./final-configs.sh
