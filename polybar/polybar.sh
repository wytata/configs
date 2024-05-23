#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done
#counter=0
#i3-msg -t get_workspaces | tr ',' '\n' | sed -nr 's/"name":"([^"]+)"/\1/p' | while read -r name; do
#  printf 'ws-icon-%i = "%s;<insert-icon-here>"\n' $((counter++)) $name
#done
# Launch polybar
polybar &

