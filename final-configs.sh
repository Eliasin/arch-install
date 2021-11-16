#!/bin/bash

cp spheres.png ~/Pictures

wal -i ~/Pictures/spheres.png

git clone --bare git@github.com:Eliasin/dotfiles.git $HOME/Dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/Dotfiles --work-tree=$HOME'

dotfiles checkout -f

