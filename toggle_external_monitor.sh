#!/bin/bash
intern=eDP-1
extern=DP-1

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
    xrandr --dpi 240 --fb 3840x2160 --output "$intern" --off --output "$extern" --scale 2x2 --panning 3840x2160
fi
