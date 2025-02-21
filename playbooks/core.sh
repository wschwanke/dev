#!/bin/bash

echo "========================================="
echo "= Installing Core Packages              ="
echo "========================================="

sudo pacman -S git python3-pip curl cmake gettext base-devel ninja

echo "========================================="
echo "= Installing Neovim Plugin Dependencies ="
echo "========================================="

sudo pacman -S fzf ripgrep xclip jq tldr

