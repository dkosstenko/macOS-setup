#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" &> /dev/null
}

# Function to print success message
print_success() {
    echo -e "\033[1;32m✅ $1\033[0m"
}

# Function to print error message
print_error() {
    echo -e "\033[1;31m❌ $1\033[0m"
}

# Function to ask for confirmation
ask_confirmation() {
    read -p "$1 (y/n): " -n 1 -r
    echo
    [[ $REPLY =~ ^[Yy]$ ]]
}