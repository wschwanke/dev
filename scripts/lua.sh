echo "========================================="
echo "= Lua                                   ="
echo "========================================="

sudo pacman -S lua51 luarocks

luarocks install luacheck jsregexp --local
