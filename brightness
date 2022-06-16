#!/bin/sh

BRIGHTNESS=$(brightnessctl -m -d intel_backlight | cut -d, -f4 | tr -d %)
echo " ${BRIGHTNESS}%"
