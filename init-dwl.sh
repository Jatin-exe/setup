#!/bin/bash

wlr-randr --output eDP-1 --scale 1.9



# Wallpaper
swaybg -i ~/Pictures/Wallpapers/dragon_mars.jpg & disown


# Background Processes
swayidle -w \
                timeout 300 'swaylock --line-color 0000ff -i ~/Pictures/Wallpapers/dragon_mars.jpg' \
                timeout 600 'swaymsg "output * dpms off"' \
                     resume 'swaymsg "output * dpms on"' \
                before-sleep 'swaylock --line-color 0000ff -i ~/Pictures/Wallpapers/dragon_mars.jpg' & disown

# setup clipboard
wl-paste --watch cliphist store & disown



