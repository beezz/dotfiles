#!/bin/sh

xrandr \
	--output LVDS1 --mode 1600x900 --pos 2560x540 --rotate normal \
	--output DP2 --primary --mode 2560x1440 --pos 0x0 --rotate normal \
	--output VGA1 --off \
	--output DP1 --off \
	--output HDMI1 --off \
	--output HDMI2 --off \
	--output HDMI3 --off \
