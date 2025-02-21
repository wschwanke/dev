#!/bin/bash

echo "========================================="
echo "= Installing Lua and LuaRocks           ="
echo "========================================="

sudo pacman -S lua51 luarocks

echo "========================================="
echo "= Installing Stylua                     ="
echo "========================================="

cargo install stylua

echo "========================================="
echo "= Installing LuaCheck                   ="
echo "========================================="

luarocks install luacheck

