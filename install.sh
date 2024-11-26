#!/bin/bash

# Load utility functions
source ./scripts/utils.sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Function to display the menu
show_menu() {
    echo -e "\033[1;34m🍺 macOS Setup Script\033[0m"
    echo "1) Install Applications"
    echo "2) Configure Git"
    echo "3) Configure Input Methods"
    echo "4) Configure macOS Settings"
    echo "5) Remove Applications"
    echo "6) Exit"
}

# Main loop
while true; do
    show_menu
    read -p "Choose an option: " choice
    case $choice in
        1) source ./scripts/install_apps.sh ;;
        2) source ./scripts/configure_git.sh ;;
        3) source ./scripts/configure_input_methods.sh ;;
        4) source ./scripts/configure_mac_os.sh ;;
        5) source ./scripts/remove_apps.sh ;;
        6) break ;;
        *) echo -e "\033[1;31m❌ Invalid option. Please try again.\033[0m" ;;
    esac
done

echo -e "\033[1;32m✅ Setup complete.\033[0m"