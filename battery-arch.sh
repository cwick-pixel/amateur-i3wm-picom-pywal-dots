#!/bin/bash

# battery_monitor_icons.sh with pywal color integration
# Outputs battery status with icons and clickable action for Polybar

# Load pywal colors
if [ -f "$HOME/.cache/wal/colors.sh" ]; then
    source "$HOME/.cache/wal/colors.sh"
    COLOR="$color1"  # Choose pywal color3 (typically a bright accent)
else
    COLOR="#F0C674"  # fallback color if pywal colors are not found
fi

if command -v acpi &>/dev/null; then
    # Get raw status line
    STATUS_RAW=$(acpi -b)
    # Extract percentage
    PERCENT=$(echo "$STATUS_RAW" | grep -oP '\d+%' | tr -d '%')
    # Extract charging status
    CHARGING=$(echo "$STATUS_RAW" | grep -o 'Charging\|Discharging\|Full')

    # Choose icon
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

    # Clickable output for Polybar
    # Right click opens XFCE Power Manager settings
    echo "%{A3:xfce4-power-manager-settings:}$ICON $CHARGING - ${PERCENT}% %{A}"

else
    echo "acpi command not found. Install it (e.g., sudo apt install acpi)."
    exit 1
fi


##!/bin/bash

# battery_monitor_icons.sh
# Outputs battery status with icons and clickable action for Polybar

#if command -v acpi &>/dev/null; then
    # Get raw status line
#    STATUS_RAW=$(acpi -b)
    # Extract percentage
#    PERCENT=$(echo "$STATUS_RAW" | grep -oP '\d+%' | tr -d '%')
    # Extract charging status
#    CHARGING=$(echo "$STATUS_RAW" | grep -o 'Charging\|Discharging\|Full')

    # Choose icon
#    if [ "$CHARGING" == "Charging" ]; then
#        ICON="%{F#F0C674}%{F-}"
#    elif [ "$PERCENT" -ge 80 ]; then
#        ICON="%{F#F0C674}%{F-}"
#    elif [ "$PERCENT" -ge 60 ]; then
#        ICON="%{F#F0C674}󰽨%{F-}"
#    elif [ "$PERCENT" -ge 40 ]; then
#        ICON="%{F#F0C674}󰽡%{F-}"
#    elif [ "$PERCENT" -ge 20 ]; then
#        ICON="%{F#F0C674}󰽧%{F-}"
#    else
#        ICON="%{F#F0C674}%{F-}"
#    fi

    # Clickable output for Polybar
    # Left click opens XFCE Power Manager settings
#    echo "%{A3:xfce4-power-manager-settings:}$ICON $CHARGING - ${PERCENT}% %{A}"

#else
#    echo "acpi command not found. Install it (e.g., sudo apt install acpi)."
#    exit 1
#fi