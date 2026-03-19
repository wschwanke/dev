yay -S paru-bin --noconfirm --needed

echo "========================================="
echo "= Browsers                              ="
echo "========================================="
echo ""
paru -S --noconfirm --needed helium-browser-bin zen-browser-bin

echo "========================================="
echo "= Communications                        ="
echo "========================================="
echo ""
sudo pacman -S discord --noconfirm --needed
paru -S --noconfirm --needed slack-desktop teams-for-linux-bin zoom

echo "========================================="
echo "= Tools                                 ="
echo "========================================="
echo ""
sudo pacman -S --noconfirm --needed ninja tmux usage ghostty
paru -S --noconfirm --needed \
    datagrip datagrip-jre \
    android-studio \
    postman-bin \
    stow \
    opencode \

echo "========================================="
echo "= Fonts                                 ="
echo "========================================="
echo ""
paru -S --noconfirm --needed ttf-sourcecodepro-nerd

echo "========================================="
echo "= Development Languages                 ="
echo "========================================="
echo ""
mise use -g go
mise use -g rust
mise use -g zig
mise use -g bun
mise use -g node@lts
mise settings add idiomatic_version_file_enable_tools node

echo "========================================="
echo "= Drivers                               ="
echo "========================================="
echo ""
paru -S --noconfirm --needed rivalcfg

# Script to remove all default Omarchy web apps
# This removes the .desktop files and associated icons

echo "========================================="
echo "= Removing Default Omarchy Web Apps     ="
echo "========================================="
echo ""
omarchy-webapp-remove "HEY"
omarchy-webapp-remove "Basecamp"
omarchy-webapp-remove "WhatsApp"
omarchy-webapp-remove "Google Photos"
omarchy-webapp-remove "Google Contacts"
omarchy-webapp-remove "Google Messages"
omarchy-webapp-remove "ChatGPT"
omarchy-webapp-remove "YouTube"
omarchy-webapp-remove "GitHub"
omarchy-webapp-remove "X"
omarchy-webapp-remove "Figma"
omarchy-webapp-remove "Discord"
omarchy-webapp-remove "Zoom"

echo "========================================="
echo "= Install Web Apps                      ="
echo "========================================="
echo ""
omarchy-webapp-install "Claude" "https://claude.ai" "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/claude-ai.png"
omarchy-webapp-install "Outlook" "https://outlook.office.com/mail/" "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/outlook.png"

