yay -S paru-bin --noconfirm --needed

echo "========================================="
echo "= Browsers                              ="
echo "========================================="
paru -S --noconfirm --needed helium-browser-bin zen-browser-bin

echo "========================================="
echo "= Communications                        ="
echo "========================================="
sudo pacman -S discord --noconfirm --needed
paru -S --noconfirm --needed slack-desktop  teams-for-linux-bin

echo "========================================="
echo "= Tools                                 ="
echo "========================================="
sudo pacman -S --noconfirm --needed ninja tmux
paru -S --noconfirm --needed \
    datagrip datagrip-jre \
    android-studio \
    postman-bin \
    stow

echo "========================================="
echo "= Fonts                                 ="
echo "========================================="
paru -S --noconfirm --needed ttf-sourcecodepro-nerd


echo "========================================="
echo "= Development Languages                 ="
echo "========================================="
mise use -g go
mise use -g rust
mise use -g zig
mise use -g bun
mise use -g node@lts

echo "========================================="
echo "= Drivers                               ="
echo "========================================="
paru -S --noconfirm --needed rivalcfg
