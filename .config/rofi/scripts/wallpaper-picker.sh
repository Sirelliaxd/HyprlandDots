#!/bin/bash

WALLPAPER_DIR="$HOME/.config/Wallpapers" # Change to your wallpaper directory
ROFI_THEME="${ROFI_THEME:-$HOME/.config/rofi/themes/themepicker.rasi}"

# Get list of images
# WALLPAPER=$(ls "$WALLPAPER_DIR" | rofi -dmenu -i -p "Wallpaper:")

# Exit if nothing selected
# if [ -z "$WALLPAPER" ]; then
#   exit 1
# fi
MENU_ENTRIES=""
for file in "$WALLPAPER_DIR"/*.{png,jpg,jpeg,webp}; do
  [ -e "$file" ] || continue # Skip if no matching extensions are found
  basename=$(basename "$file")
  MENU_ENTRIES+="${basename}\0icon\x1f${file}\n"
done

# Launch rofi with icon flags and an optional custom grid theme
SELECTED=$(echo -e "$MENU_ENTRIES" | rofi -dmenu -i -show-icons \
  -theme "$ROFI_THEME")

# Exit if selection canceled
if [ -z "$SELECTED" ]; then
  exit 1
fi

FULL_PATH="$WALLPAPER_DIR/$SELECTED"

#hyprctl hyprpaper preload "$FULL_PATH"
# hyprctl hyprpaper wallpaper ",$FULL_PATH"
# hyprctl hyprpaper reload ,"$FULL_PATH"
hyprctl hyprpaper wallpaper "eDP-1 ,$FULL_PATH, cover"
hyprctl hyprpaper wallpaper "HDMI-A-1 ,$FULL_PATH, cover"
hyprctl hyprpaper wallpaper " ,$FULL_PATH, cover"
