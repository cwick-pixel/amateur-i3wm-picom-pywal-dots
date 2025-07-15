#!/bin/bash
if [ -f "$HOME/.cache/wal/colors.sh" ]; then
    source "$HOME/.cache/wal/colors.sh"
    COLOR="$color1"  
else
    COLOR="#F0C674"  
fi

if command -v acpi &>/dev/null; then
    STATUS_RAW=$(acpi -b)
    PERCENT=$(echo "$STATUS_RAW" | grep -oP '\d+%' | tr -d '%')
    CHARGING=$(echo "$STATUS_RAW" | grep -o 'Charging\|Discharging\|Full')

    if [ "$CHARGING" == "Charging" ]; then
        ICON="%{F$COLOR}%{F-}"
    elif [ "$PERCENT" -ge 80 ]; then
        ICON="%{F$COLOR}%{F-}"
    elif [ "$PERCENT" -ge 60 ]; then
        ICON="%{F$COLOR}󰽨%{F-}"
    elif [ "$PERCENT" -ge 40 ]; then
        ICON="%{F$COLOR}󰽡%{F-}"
    elif [ "$PERCENT" -ge 20 ]; then
        ICON="%{F$COLOR}󰽧%{F-}"
    else
        ICON="%{F$COLOR}%{F-}"
    fi

    echo "%{A3:xfce4-power-manager-settings:}$ICON $CHARGING - ${PERCENT}% %{A}"

else
    echo "acpi command not found. Install it (e.g., sudo apt install acpi)."
    exit 1
fi
