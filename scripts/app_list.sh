#!/bin/bash

# Load utility functions
source ./scripts/utils.sh

# Function to install a brew package if not already installed
install_brew_package() {
    local package=$1
    if ! brew list $package &> /dev/null; then
        brew install $package
        print_success "$package installed."
    else
        echo -e "\033[1;34m$package is already installed.\033[0m"
    fi
}

# Function to install a brew cask package if not already installed
install_brew_cask_package() {
    local package=$1
    if ! brew list --cask $package &> /dev/null; then
        brew install --cask $package
        print_success "$package installed."
    else
        echo -e "\033[1;34m$package is already installed.\033[0m"
    fi
}

# Function to install a Mac App Store app if not already installed
install_mas_app() {
    local app_id=$1
    local app_name=$2
    if ! mas list | grep $app_id &> /dev/null; then
        mas install $app_id
        print_success "$app_name installed."
    else
        echo -e "\033[1;34m$app_name is already installed.\033[0m"
    fi
}

# CLI tools
install_brew_package smudge/smudge/nightlight
install_brew_package exiftool
install_brew_package ffmpeg
install_brew_package nvm
install_brew_package mas
install_brew_package git
install_brew_package yarn

# Applications
install_brew_cask_package betterzip
install_brew_cask_package transmission
install_brew_cask_package media-converter
install_brew_cask_package visual-studio-code
install_brew_cask_package docker
install_brew_cask_package microsoft-teams
install_brew_cask_package brave-browser
install_brew_cask_package chromium
install_brew_cask_package orion
install_brew_cask_package webstorm
install_brew_cask_package intellij-idea
install_brew_cask_package pycharm
install_brew_cask_package clion
install_brew_cask_package datagrip
install_brew_cask_package gitkraken
install_brew_cask_package telegram-desktop
install_brew_cask_package obsidian
install_brew_cask_package protonvpn
install_brew_cask_package whisky
install_brew_cask_package gray
install_brew_cask_package iterm2
install_brew_cask_package veracrypt

# Install apps from Mac App Store
install_mas_app 937984704 "Amphetamine"
install_mas_app 1595464182 "MonitorControl Lite"
install_mas_app 897283731 "Strongbox"

# Install Node.js
nvm install node 18
nvm install --lts

# Install Python
install_brew_package python

# Install Java
install_brew_cask_package adoptopenjdk

# Install Zsh and plugins
install_brew_package zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
install_brew_package romkatv/powerlevel10k/powerlevel10k
install_brew_package zsh-syntax-highlighting
install_brew_package zsh-autosuggestions
install_brew_package zsh-completions
install_brew_package zsh-navigation-tools
install_brew_package zsh-better-npm-completion

# Install Quick Look plugins
install_brew_package qlcolorcode
install_brew_package qlstephen
install_brew_package quicklook-json
install_brew_package qlmarkdown
install_brew_package qlimagesize
install_brew_package suspicious-package
install_brew_package apparency
install_brew_package qlvideo
install_brew_package quicklookapk