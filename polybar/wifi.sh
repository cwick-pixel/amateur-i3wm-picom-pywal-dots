#!/usr/bin/env bash

source "${HOME}/.cache/wal/colors.sh"

icon_color="$color2"
ssid_color="$color7"

wifi_device="wlan0"

if ! nmcli device status | grep -q "^$wifi_device"; then
    echo "%{F$icon_color} %{F$ssid_color}wlan0 Not Found%{F-}"
    exit 0
fi

wifi_status=$(nmcli -t -f DEVICE,STATE dev | grep "^$wifi_device:" | cut -d: -f2)

if [[ "$wifi_status" == "connected" ]]; then
    strength=$(nmcli -t -f active,signal dev wifi | grep '^yes' | cut -d: -f2)

    if [ "$strength" -ge 75 ]; then
        icon="󰤨 " 
    elif [ "$strength" -ge 40 ]; then
        icon="󰤢 "
    elif [ "$strength" -ge 1 ]; then
        icon=" "
    else
        icon=" "
    fi

    echo "%{F$icon_color}$icon%{F-}"
else
    echo "%{F$icon_color} %{F-}"
fi
