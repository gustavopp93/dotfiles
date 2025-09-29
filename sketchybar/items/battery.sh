#!/bin/bash

sketchybar \
  --add item battery right \
  --set battery update_freq=120 \
  script="$PLUGIN_DIR/battery.sh" \
  icon.color=$RED \
  background.corner_radius=6 \
  background.padding_left=8 \
  background.padding_right=8 \
  --subscribe battery system_woke power_source_change
