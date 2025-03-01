#!/bin/bash

echo "========================================="
echo "= Core Packages                         ="
echo "========================================="

sudo pacman -S git python3 python-pip curl cmake gettext base-devel ninja fzf ripgrep xclip jq tldr

echo "========================================="
echo "= Dev Programs                          ="
echo "========================================="

sudo pacman -S tmux ghostty neovim

echo "========================================="
echo "= Go                                    ="
echo "========================================="

sudo pacman -S dotnet-runtime dotnet-sdk

echo "========================================="
echo "= Go                                    ="
echo "========================================="

sudo pacman -S go

echo "========================================="
echo "= Zig                                   ="
echo "========================================="

sudo pacman -S zig

echo "========================================="
echo "= Rust                                  ="
echo "========================================="

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cargo install --locked tree-sitter-cli
cargo install stylua

echo "========================================="
echo "= Node                                  ="
echo "========================================="

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

nvm install --lts

npm install -g neovim

echo "========================================="
echo "= Lua                                   ="
echo "========================================="

sudo pacman -S lua51 luarocks

luarocks install luacheck --local
luarocks install jsregexp --local

echo "========================================="
echo "= Hyprland                              ="
echo "========================================="

sudo pacman -S hyprland qt5-wayland qt6-wayland
sudo pacman -S swaync pipewire wireplumber
sudo pacman -S hyprpolkitagent wofi

yay -S waybar xsh-desktop-portal-hyprland-git

sudo pacman -S nemo
