#!/usr/bin/env bash

LOCKFILE="/tmp/myscript.lock"

# Check if the lock file exists
if [ -e "$LOCKFILE" ]; then
    echo "Script is already running."
    exit 1
fi

# Create the lock file
touch "$LOCKFILE"

# Ensure the lock file is removed on exit
trap "rm -f $LOCKFILE" EXIT

# Your script logic here
echo "Running the script..."

# The lock file will be removed automatically when the script exits

if pgrep -x "hyprpaper" > /dev/null; then
    echo "Hyprpaper is running."
    WALLPAPER_DIR="$HOME/Pictures/"
    CURRENT_WALL=$(hyprctl hyprpaper listloaded)

    # Get a random wallpaper that is not the current one
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
    # ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

    # Apply the selected wallpaper
    hyprctl hyprpaper reload ,"$WALLPAPER"
else
    echo "Hyprpaper is not running."

    hyprpaper &
fi



