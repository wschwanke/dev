#!/bin/bash

echo "========================================="
echo "= Core Packages                         ="
echo "========================================="

sudo pacman -S git python3 python-pip curl cmake gettext base-devel ninja fzf ripgrep wl-clipboard jq tldr inotify-tools

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

sudo pacman -s rust

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

luarocks install luacheck jsregexp --local

echo "========================================="
echo "= Hyprland                              ="
echo "========================================="

sudo pacman -S hyprland \
    qt5-wayland qt6-wayland egl-wayland \
    pipewire wireplumber \
    swaync hyprpolkitagent hypridle hyprpaper hyprlock xdg-desktop-portal-hyprland \
    nemo \
    hyprshot hyprpicker

yay -S waybar walker-bin rose-pine-cursor rose-pine-hyprcursor


echo "========================================="
echo "= Datagrip                              ="
echo "========================================="

yay -S datagrip datagrip-jre
