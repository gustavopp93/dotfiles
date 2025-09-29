#!/bin/bash

# sketchybar --add event aerospace_workspace_update
for sid in $(aerospace list-workspaces --all); do
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
    icon.height_color=$PINK \
    label.drawing=off \
    click_script="aerospace workspace $sid" \
    script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done

# sketchybar --add item separator left \
#   --set separator icon= \
#   icon.font="$FONT:Regular:15.0" \
#   background.padding_left=15 \
#   label.drawing=off
