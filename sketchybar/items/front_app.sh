#!/bin/bash

sketchybar --add item front_app center \
           --set front_app background.color=$ITEM_BG_COLOR \
                           icon.color=$ACCENT_COLOR \
                           icon.font="sketchybar-app-font:Regular:10.0" \
                           label.color=$ACCENT_COLOR \
                           script="$PLUGIN_DIR/front_app.sh" \
           --subscribe front_app front_app_switched