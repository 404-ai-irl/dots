#!/bin/bash
# aliased to togmon

INTERNAL_MONITOR="eDP-1"
EXTERNAL_MONITOR="HDMI-A-1"

# Function to disable the external monitor
disable_external_monitor() {
    hyprctl keyword monitor "$EXTERNAL_MONITOR, disable"
}

# Function to enable the external monitor
enable_external_monitor() {
    hyprctl keyword monitor "$EXTERNAL_MONITOR, preferred, 0, auto"
}

# Check if the external monitor is enabled
if hyprctl monitors | grep -q "$EXTERNAL_MONITOR"; then
    disable_external_monitor
    echo "External monitor $EXTERNAL_MONITOR disabled."
else
    enable_external_monitor
    echo "External monitor $EXTERNAL_MONITOR enabled."
fi
