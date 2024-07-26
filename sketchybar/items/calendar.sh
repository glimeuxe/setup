#!/bin/bash

current_hour=$(date +%H)

if [ "$current_hour" -ge 6 ] && [ "$current_hour" -lt 18 ]; then
	icon="𖤓"
else
	icon="☾"
fi

sketchybar --add item calendar center \
           --set calendar icon=$icon \
                          update_freq=1 \
                          script="$PLUGIN_DIR/calendar.sh"
# 􀧞