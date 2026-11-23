#!/bin/bash

# At login SketchyBar can start before AeroSpace. Wait for the AeroSpace server.
for _ in $(seq 1 30); do
  WORKSPACES=$(aerospace list-workspaces --all 2>/dev/null) && [ -n "$WORKSPACES" ] && break
  sleep 1
done
[ -z "$WORKSPACES" ] && WORKSPACES="1 2 3 4 5 6 7"

for sid in $WORKSPACES; do
  sketchybar --add item space.$sid left \
    --subscribe space.$sid aerospace_workspace_change \
    --set space.$sid \
    background.color=$SURFACE0 \
    background.corner_radius=9 \
    background.height=26 \
    background.padding_left=-8 \
    background.padding_right=-8 \
    background.drawing=on \
    icon="$sid" \
    icon.padding_left=22 \
    icon.padding_right=22 \
    icon.highlight_color=$PINK \
    label.drawing=off \
    click_script="aerospace workspace $sid" \
    script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done

# sketchybar --add item separator left \
#   --set separator icon= \
#   icon.font="$FONT:Regular:15.0" \
#   background.padding_left=15 \
#   label.drawing=off
