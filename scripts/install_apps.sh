#!/bin/bash

# Load utility functions
source ./scripts/utils.sh

# Ask for the administrator password upfront.
sudo -v

# Keep Sudo Until Script is finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Homebrew
if ! command_exists brew; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    if [[ $? -eq 0 ]]; then
        print_success "Homebrew installed successfully."
    else
        print_error "Homebrew installation failed."
        exit 1
    fi
else
    echo -e "\033[1;34m🍺 Homebrew is already installed.\033[0m"
fi

# Update the repos
brew update
brew upgrade

# Check the health
brew doctor

# Source the app list and install applications
source ./scripts/app_list.sh

# Install Rosetta if on Apple Silicon
if [ "$(uname -m)" = "arm64" ]; then
    if ! pkgutil --pkg-info=com.apple.pkg.RosettaUpdateAuto &> /dev/null; then
        echo "Installing Rosetta"
        softwareupdate --install-rosetta --agree-to-license
    else
        echo "Rosetta is installed"
    fi
fi