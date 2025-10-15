echo "========================================="
echo "= Browsers                              ="
echo "========================================="
paru -S --noconfirm --needed brave-bin zen-browser-bin

echo "========================================="
echo "= Communications                        ="
echo "========================================="
sudo pacman -S discord --noconfirm --needed
paru -S --noconfirm --needed slack-desktop  teams-for-linux

echo "========================================="
echo "= Tools                                 ="
echo "========================================="
sudo pacman -S --noconfirm --needed ninja ripgrep tldr jq tmux
paru -S --noconfirm --needed \
    datagrip datagrip-jre \
    android-studio \
    postman-bin

echo "========================================="
echo "= Fonts                                 ="
echo "========================================="
paru -S --noconfirm --needed ttf-sourcecodepro-nerd


echo "========================================="
echo "= Development Languages                 ="
echo "========================================="
sudo pacman -S --noconfirm --needed zig rust go

echo "========================================="
echo "= Drivers                               ="
echo "========================================="
paru -S --noconfirm --needed rivalcfg
