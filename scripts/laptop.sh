sudo pacman -S brightnessctl --noconfirm --needed

paru -S system76-firmware-daemon-git
sudo systemctl enable --now system76-firmware-daemon
sudo gpasswd -a $USER adm

paru -S firmware-manager-git --noconfirm

paru -S system76-driver --noconfirm
sudo systemctl enable --now system76

paru -S system76-acpi-dkms

paru -S system76-power
sudo systemctl enable --now com.system76.PowerDaemon.service
sudo gpasswd -a $USER adm
