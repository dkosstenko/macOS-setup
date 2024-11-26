#!/bin/bash

# Function to reload input sources
reload_input_sources() {
    defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add \
        '{"InputSourceKind"="Keyboard Layout"; "KeyboardLayout ID"=0; "KeyboardLayout Name"="U.S.";}'
    defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add \
        '{"InputSourceKind"="Keyboard Layout"; "KeyboardLayout ID"=41; "KeyboardLayout Name"="Ukrainian";}'
}

# Clear existing input sources
defaults write com.apple.HIToolbox AppleEnabledInputSources -array

# Add English (US) and Ukrainian input methods
reload_input_sources

# Restart the input method services to apply changes
killall SystemUIServer

echo "Input methods updated. English (US) and Ukrainian have been added."
