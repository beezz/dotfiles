#!/bin/sh
xrandr \
	--output VGA-0 --off \
	--output LVDS-0 --mode 1600x900 --pos 2560x540 --rotate normal \
	--output DP-3 --primary --mode 2560x1440 --pos 0x0 --rotate normal \
	--output DP-5 --off \
	--output DP-4 --off \
	--output DP-2 --off \
	--output DP-1 --off \
	--output DP-0 --off