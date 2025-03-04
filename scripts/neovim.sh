#!/bin/bash

echo "========================================="
echo "= Installing Neovim                     ="
echo "========================================="

cd ~

echo "Creating the \`source\` directory"

mkdir source

echo "Cloning from Github..."
git clone https://github.com/neovim/neovim.git

cd neovim

echo "Running make file..."
sudo make install
