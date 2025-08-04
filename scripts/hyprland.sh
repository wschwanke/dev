echo "========================================="
echo "= Hyprland                              ="
echo "========================================="

sudo pacman -S  --noconfirm --needed hyprland \
    qt5-wayland qt6-wayland egl-wayland \
    pipewire wireplumber \
    swaync hyprpolkitagent hypridle hyprpaper hyprlock xdg-desktop-portal-hyprland \
    nemo \
    hyprshot hyprpicker wl-clipboard

paru -S --noconfirm --needed waybar walker-bin rose-pine-cursor rose-pine-hyprcursor
