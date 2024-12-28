#!/bin/bash

vol=$(pactl get-sink-volume $(pactl get-default-sink ) | awk -F'/' '{gsub("%","",$2); print $2}'| tr -d '[:space:]');

if [ "$vol" -lt 240 ];then
    pactl set-sink-volume $(pactl get-default-sink ) +5%;
fi
