# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Configuration Architecture

This is a modular Hyprland configuration split across organized directories:

- **Main config**: `hyprland.conf` sources all other configuration files
- **Core configs** (`core/`): Essential system configurations
  - `env.conf`: Environment variables and auto-start applications
  - `device.conf`: Monitor setup and input device configuration  
  - `keymaps.conf`: All keyboard bindings and shortcuts
  - `workspaces.conf`: Workspace-related settings
- **Extra configs** (`extra/`): Visual and behavior customizations
  - `theme.conf`: Styling, animations, borders, and visual effects
  - `colors.conf`: Color scheme definitions
  - `windowrules.conf`: Window-specific rules and behaviors
- **Utility configs**: Standalone service configurations
  - `hypridle.conf`: Screen locking and power management
  - `hyprlock.conf`: Lock screen appearance
  - `hyprpaper.conf`: Wallpaper management

## Key Applications and Tools

- **Terminal**: `ghostty`
- **File Manager**: `thunar` 
- **Application Launcher**: `sherlock`
- **Clipboard Manager**: `cliphist` with `wofi`
- **Audio Control**: `pamixer` and `playerctl`
- **Wallpaper Management**: `hyprpaper` and `swww`
- **Status Bar**: `waybar`

## Custom Scripts

Located in `scripts/`:
- `hyprpaper-loader.sh`: Sets random wallpapers for dual monitor setup (alias: `walnew`)
- `toggle-monitor-hyprland.sh`: Toggle external monitor on/off (alias: `togmon`)

## Monitor Setup

Dual monitor configuration:
- Primary: DP-1 (2560x1440@75Hz)
- Secondary: HDMI-A-1 (2560x1440@144Hz)

## Key Bindings System

Uses vim-style navigation with ALT-based modifiers:
- `$mod1` (ALT): Primary modifier for navigation and basic actions
- `$mod2` (ALT+SUPER): Secondary modifier for window movement and advanced actions

Workspace navigation uses right-hand keys: `yuiop` and `nm,./` for workspaces 1-10.

## Common Commands

### Hyprland Control
```bash
# Reload configuration
hyprctl reload

# Check monitor status
hyprctl monitors

# List active windows
hyprctl clients

# Set wallpaper manually
hyprctl hyprpaper wallpaper "monitor-name,/path/to/image"

# Enable/disable monitors
hyprctl keyword monitor "HDMI-A-1, disable"
hyprctl keyword monitor "HDMI-A-1, preferred, 0, auto"
```

### Custom Scripts
```bash
# Set random wallpapers (if aliased as walnew)
walnew

# Toggle external monitor (if aliased as togmon)  
togmon
```

## Configuration Testing

After making changes:
1. Test with `hyprctl reload` for most changes
2. For monitor/input changes, may require Hyprland restart
3. Check `hyprctl monitors` and `hyprctl clients` to verify changes