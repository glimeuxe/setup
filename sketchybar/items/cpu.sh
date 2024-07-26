#!/bin/bash

sketchybar --add item cpu center \
           --set cpu  update_freq=2 \
                      icon=􀧓 \
                      script="$PLUGIN_DIR/cpu.sh"