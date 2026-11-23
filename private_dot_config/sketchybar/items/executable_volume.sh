#!/bin/bash

sketchybar \
  --add item volume right \
  --set volume script="$PLUGIN_DIR/volume.sh" \
  icon.color=$GREEN \
  background.corner_radius=6 \
  background.padding_left=8 \
  background.padding_right=8 \
  --subscribe volume volume_change
