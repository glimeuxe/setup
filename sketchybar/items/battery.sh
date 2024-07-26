#!/bin/bash

sketchybar --add item battery center \
           --set battery update_freq=60 \
                         script="$PLUGIN_DIR/battery.sh" \
           --subscribe battery system_woke power_source_change