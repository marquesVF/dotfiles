#!/bin/bash

BACKLIGHT_DIR="/sys/class/backlight/intel_backlight"
MAX_BRIGHTNESS=$(cat $BACKLIGHT_DIR/max_brightness)
CURRENT_BRIGHTNESS=$(cat $BACKLIGHT_DIR/brightness)
STEP=$((MAX_BRIGHTNESS / 20))  # 5% steps

case "$1" in
    "up")
        NEW_BRIGHTNESS=$((CURRENT_BRIGHTNESS + STEP))
        if [ $NEW_BRIGHTNESS -gt $MAX_BRIGHTNESS ]; then
            NEW_BRIGHTNESS=$MAX_BRIGHTNESS
        fi
        ;;
    "down")
        NEW_BRIGHTNESS=$((CURRENT_BRIGHTNESS - STEP))
        if [ $NEW_BRIGHTNESS -lt 1 ]; then
            NEW_BRIGHTNESS=1
        fi
        ;;
    *)
        echo "Usage: $0 {up|down}"
        exit 1
        ;;
esac

echo $NEW_BRIGHTNESS | sudo tee $BACKLIGHT_DIR/brightness > /dev/null 
