#!/bin/sh
feh --bg-scale ~/Pictures/bg/great_wave.png
dwmblocks &

while true; do
    # Log stderror to a file
    dwm 2> ~/.dwm.log
    # No error logging
    #dwm >/dev/null 2>&1
done
