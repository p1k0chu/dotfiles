#!/usr/bin/bash

# Count tiled windows on current workspace
count=$(hyprctl clients -j | jq '[.[] | select(.workspace.id == '"$(hyprctl activeworkspace -j | jq .id)"' and .floating == false)] | length')

if (( count > 0 )); then
    hyprctl dispatch exec "[float; size 50% 50%] kitty $*"
else
    hyprctl dispatch exec "kitty $*"
fi

