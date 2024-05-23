#!/bin/bash

picom &
nm-applet &
# xfce4-power-manager &
xfce4-clipman &
pkill ibus-ui-gtk3 &
xinput disable "ELAN1301:00 04F3:30EF Touchpad" &

# custom scripts
bash ~/Downloads/scripts/headphone.sh &
bash ~/Downloads/scripts/lock-screen.sh &

# volumeicon &
xss-lock --transfer-sleep-lock -- betterlockscreen -l &
sxhkd -c ~/.config/qtile/sxhkdrc &

/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
/usr/bin/dunst -conf ~/.config/dunstrc &
