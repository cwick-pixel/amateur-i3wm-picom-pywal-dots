#!/usr/bin/env bash

source "${HOME}/.cache/wal/colors.sh"
wal_color="$color2"

bt_status=$(bluetoothctl show | grep "Powered:" | awk '{print $2}')

if [ "$bt_status" == "yes" ]; then
    bt_icon=""  
else
    bt_icon=""  
fi

echo "%{F$wal_color}$bt_icon%{F-}"
