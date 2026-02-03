#!/usr/bin/env bash

opt1="Exit to tty"
opt2="Suspend"
opt3="Shutdown"
opt4="Reboot"

res=$(echo -e "$opt1\n$opt2\n$opt3\n$opt4" | tofi)

case "$res" in
	$opt1)
		notify-send "$opt1"
		sleep 1
		uwsm stop
	;;
	$opt2)
		notify-send "$opt2"
		sleep 1
		hyprlock -q &
		sleep 1
		systemctl suspend
	;;
	$opt3)
		notify-send "$opt3"
		sleep 1
		systemctl poweroff
	;;
	$opt4)
		notify-send "$opt4"
		sleep 1
		systemctl reboot
	;;
	*)
		notify-send "Cancel"
		exit 0
	;;
esac


