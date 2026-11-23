#!/usr/bin/env bash

# Source the Catppuccin colors
source "$CONFIG_DIR/plugins/colors.sh"

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  # Active workspace: blue background with dark text
  sketchybar --set $NAME background.color=$BLUE \
    background.border_color=$BLUE \
    icon.color=$BASE
else
  # Inactive workspace: surface background with light text
  sketchybar --set $NAME background.color=$SURFACE1 \
    background.border_color=$SURFACE2 \
    icon.color=$SUBTEXT1
fi
