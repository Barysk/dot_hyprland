#!/bin/bash

if [ -z $1 ]; then
    echo "Usage: $0 <default_monitor> (e.g., eDP-1)"
    exit 1
fi

default_monitor=$1

options="Default\nExternal Only\nMirror"

choice=$(echo -e $options | tofi)

case $choice in
    Default)
        hyprctl reload
        ;;
    External\ Only)
        hyprctl reload
        hyprctl keyword monitor $default_monitor,disable
        hyprctl keyword monitor ,preferred,auto,1,transform,0
        ;;
    Mirror)
        hyprctl reload
        hyprctl keyword monitor $default_monitor,highres@highrr,0x0,1.0
        hyprctl keyword monitor ,preferred,auto,1,mirror,$default_monitor
        ;;
    *)
        echo "No option selected or canceled"
        ;;
esac
