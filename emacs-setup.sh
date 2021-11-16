#!/bin/bash

pacman -Syu --noconfirm ripgrep fzf fd

git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
yes | ~/.emacs.d/bin/doom install



