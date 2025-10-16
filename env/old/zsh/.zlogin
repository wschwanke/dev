# Only launch Hyprland if we're on TTY1 and not in a tmux session
if [[ "$(tty)" == "/dev/tty1" ]] && [[ -z "$TMUX" ]]; then
  if uwsm check may-start; then
    if [ -d "/sys/class/power_supply/BAT0" ] || [ -d "/sys/class/power_supply/BAT1" ]; then
      exec uwsm start hyprland.desktop -- -c ~/.config/hypr/hyprland-laptop.conf
    else
      exec uwsm start hyprland.desktop -- -c ~/.config/hypr/hyprland-desktop.conf
    fi
  fi
fi
