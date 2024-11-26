#!/bin/bash

# Load utility functions
source ./scripts/utils.sh

# Function to remove default macOS applications
remove_app() {
    local app_path=$1
    if [ -d "$app_path" ]; then
        sudo rm -rf "$app_path"
        print_success "$app_path removed."
    else
        echo -e "\033[1;34m$app_path is not installed.\033[0m"
    fi
}

# Remove default macOS applications
remove_app "/Applications/Photo Booth.app"
remove_app "/Applications/News.app"
remove_app "/Applications/Stocks.app"
remove_app "/Applications/Home.app"
remove_app "/Applications/Chess.app"
remove_app "/Applications/Keynote.app"
remove_app "/Applications/Freeform.app"
remove_app "/Applications/Numbers.app"
remove_app "/Applications/Pages.app"
remove_app "/Applications/Podcasts.app"
remove_app "/Applications/Music.app"