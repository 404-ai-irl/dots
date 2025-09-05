#!/bin/bash
# This script sets a random wallpaper for each monitor,
# alias to walnew

# Get 2 random wallpapers
WALL_DIR=~/Pictures/wallpapers
WALL1=$(find "$WALL_DIR" -type f | shuf -n 1)
WALL2=$(find "$WALL_DIR" -type f | shuf -n 1)

# Helper variables
WAL="hyprctl hyprpaper"
PLOAD="$WAL preload"
ULOAD="$WAL unload all"
SETWAL="$WAL wallpaper"



$ULOAD
$PLOAD $WALL1
$PLOAD $WALL2
$SETWAL DP-3,$WALL1
$SETWAL HDMI-A-1,$WALL2
$ULOAD
