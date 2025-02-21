#!/bin/bash

echo "========================================="
echo "= Installing ZSH                        ="
echo "========================================="

sudo pacman -S zsh

echo "Changing the default shell..."
chsh -s /bin/zsh
