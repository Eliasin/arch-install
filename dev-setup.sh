#!/bin/bash

pacman -Syu --noconfirm emacs docker nodejs npm pandoc

curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y

"$HOME"/.cargo/bin/rustup default nightly
"$HOME"/.cargo/bin/rustup component add rust-src

sh -cy "$(curl -fsSL https://starship.rs/install.sh)"

