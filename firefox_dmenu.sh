#!/bin/bash

function launch_firefox_profiles() {

firefox_profiles_ini="$HOME/.mozilla/firefox/profiles.ini"
firefox_bin="/usr/bin/firefox"

# List available profiles from profiles.ini
profiles=($(awk -F= '/^\[Profile[0-9]+\]/ { getline; print $2 }' "$firefox_profiles_ini"))

# Prepare profiles for Rofi
rofi_input=$(printf "%s\n" "${profiles[@]}")

# Use Rofi to select a profile
selected_profile=$(echo -e "$rofi_input" | rofi -dmenu -p "Choose Firefox Profile")

if [ -n "$selected_profile" ]; then
    # Launch Firefox with the selected profile
    $firefox_bin -P "$selected_profile" &
fi
}


dmenu -p "Run"  < /dev/null | launch_firefox_profiles