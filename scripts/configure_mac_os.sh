#!/bin/bash

# Load utility functions
source ./scripts/utils.sh

# Ask for the administrator password upfront.
sudo -v

# Keep Sudo Until Script is finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Dock Configuration
## Dock Position
defaults write com.apple.dock orientation -string "bottom"

## Remove all icons from the Dock
defaults write com.apple.dock persistent-apps -array

## Icon size
defaults write com.apple.dock "tilesize" -int "36"

## Autohide
defaults write com.apple.dock "autohide" -bool "true"

## Autohide animation time
defaults write com.apple.dock "autohide-time-modifier" -float "0.25"

## Autohide delay
defaults write com.apple.dock "autohide-delay" -float "0.2"

## Show recents
defaults write com.apple.dock "show-recents" -bool "true"

## Minimize animation effect
defaults write com.apple.dock "mineffect" -string "genie"

## Active applications only
defaults write com.apple.dock "static-only" -bool "false"

## Scroll to Exposé app
defaults write com.apple.dock "scroll-to-open" -bool "false"

# Screenshots
## Disable shadow
defaults write com.apple.screencapture "disable-shadow" -bool "false"

## Include date
defaults write com.apple.screencapture "include-date" -bool "true"

## Location
defaults write com.apple.screencapture "location" -string "~/Desktop"

## Display thumbnail
defaults write com.apple.screencapture "show-thumbnail" -bool "true"

## Choose screenshot format
defaults write com.apple.screencapture "type" -string "png"

# Safari
## Show full URL
defaults write com.apple.Safari "ShowFullURLInSmartSearchField" -bool "true"

## Set homepage to about:blank
defaults write com.apple.Safari HomePage -string "about:blank"

## Prevent Safari from opening "safe" files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

## Show sidebar in Top Sites
defaults write com.apple.Safari ShowSidebarInTopSites -bool false

## Disable Safari’s thumbnail cache for History and Top Sites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

## Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

## Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Finder
## Quit
defaults write com.apple.finder "QuitMenuItem" -bool "false"

## Allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

## Don't write .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

## Show extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"

## Show hidden files
defaults write com.apple.finder "AppleShowAllFiles" -bool "false"

## Path bar
defaults write com.apple.finder "ShowPathbar" -bool "false"

## Default view style
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"

## Keep folders on top
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"

## Open folders destination
defaults write com.apple.finder "FinderSpawnTab" -bool "true"

## Default search scope
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCev"

## Empty bin items after 30 days
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "false"

## Changing file extension warning
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"

## Save to disk location
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"

## Title bar icons
defaults write com.apple.universalaccess "showWindowTitlebarIcons" -bool "false"

## Toolbar title rollover delay
defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0.25"

## Sidebar icon size
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "2"

# Desktop
## Keep folders on top
defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool "false"

## All icons
defaults write com.apple.finder "CreateDesktop" -bool "false"

## Disks
defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool "false"

## External disks
defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "false"

## Removable media
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "false"

## Connected servers
defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool "false"

# Menu Bar
## Flash clock time separators
defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "false"

## Digital clock format (24h)
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm:ss\""

## Show Battery in menu bar
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.battery" -bool "true"

## Show battery percentage
defaults write com.apple.menuextra.battery "ShowPercent" -string "YES"

## Show Bluetooth in menu bar
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.bluetooth" -bool "true"

## Show AirPort in menu bar
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.airport" -bool "true"

## Show Time Machine in menu bar
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.TimeMachine" -bool "true"

## Show Volume in menu bar
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.volume" -bool "true"

## Show User in menu bar
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.user" -bool "true"

## Show Spotlight in menu bar
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.Spotlight" -bool "true"

## Show Siri in menu bar
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.siri" -bool "false"

## Show Notification Center in menu bar
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.notificationcenter" -bool "true"

## Show Clock in menu bar
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.clock" -bool "true"

# Mouse
## Acceleration
defaults write NSGlobalDomain com.apple.mouse.linear -bool "false"

## Speed
defaults write NSGlobalDomain com.apple.mouse.scaling -float "1"

## Focus Follows Mouse
defaults write com.apple.Terminal "FocusFollowsMouse" -bool "false"

# Trackpad
## Click weight (threshold)
defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "0"

## Dragging with drag lock
defaults write com.apple.AppleMultitouchTrackpad "DragLock" -bool "false"

## Dragging without drag lock
defaults write com.apple.AppleMultitouchTrackpad "Dragging" -bool "false"

## Dragging with three finger drag
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool "false"

# Keyboard
## Key held down behavior
defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "false"

## Fn/🌐 key usage
defaults write com.apple.HIToolbox AppleFnUsageType -int "1"

## Function keys behavior
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true

## Keyboard navigation
defaults write NSGlobalDomain AppleKeyboardUIMode -int "2"

## Disable automatic spelling correction
defaults write NSGlobalDomain "NSAutomaticSpellingCorrectionEnabled" -bool "false"

# Mission Control
## Rearrange automatically
defaults write com.apple.dock "mru-spaces" -bool "true"

## Group windows by application
defaults write com.apple.dock "expose-group-apps" -bool "false"

## Switch to Space with open windows
defaults write NSGlobalDomain "AppleSpacesSwitchOnActivate" -bool "true"

## Displays have separate Spaces
defaults write com.apple.spaces "spans-displays" -bool "false"

# Feedback Assistant
## Autogather
defaults write com.apple.appleseed.FeedbackAssistant "Autogather" -bool "false"

# Xcode
## Show Build Durations
defaults write com.apple.dt.Xcode "ShowBuildOperationDuration" -bool "true"

# Simulator
## Screenshot location
defaults write com.apple.iphonesimulator "ScreenShotSaveLocation" -string "~/Pictures/Simulator Screenshots"

# TextEdit
## Default document format
defaults write com.apple.TextEdit "RichText" -bool "false"

## Disable Smart quotes
defaults write com.apple.TextEdit "SmartQuotes" -bool "false"

# Time Machine
## Don't offer new disks for Time Machine backup
defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool "false"

# Activity Monitor
## Update Frequency
defaults write com.apple.ActivityMonitor "UpdatePeriod" -int "1"

## Dock Icon type
defaults write com.apple.ActivityMonitor "IconType" -int "0"

# Messages
## Show Subject Field
defaults write com.apple.MobileSMS "MMSShowSubject" -bool "false"

# Miscellaneous
## Help Menu position
defaults write com.apple.helpviewer "DevMode" -bool "false"

## Spring loading for all Dock items
defaults write com.apple.dock "enable-spring-load-actions-on-all-items" -bool "true"

## Show Music song notifications
defaults write com.apple.Music "userWantsPlaybackNotifications" -bool "false"

## Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

## Night Shift Configuration
# Configure Night Shift schedule
defaults write com.apple.CoreBrightness CBBlueReductionStatus -dict-add CBBlueReductionAutoScheduleEnabled -bool true
defaults write com.apple.CoreBrightness CBBlueReductionStatus -dict-add CBBlueReductionSunSchedule -bool true
defaults write com.apple.CoreBrightness CBBlueReductionStatus -dict-add CBBlueReductionSunScheduleStart -int 1080
defaults write com.apple.CoreBrightness CBBlueReductionStatus -dict-add CBBlueReductionSunScheduleEnd -int 360

## Close confirm changes popup
defaults write NSGlobalDomain "NSCloseAlwaysConfirmsChanges" -bool "true"

# Software Update
## Enable automatic updates
defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -boolean "true"

## Enable automatic update checks
defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticCheckEnabled -boolean "true"

## Check for updates daily
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Privacy & security
## Disable crash reporter
defaults write com.apple.CrashReporter DialogType -string "none"

## Disable analytics
defaults write com.apple.analyticsd "ForceDisable" -bool "true"

## Disable diagnostics
defaults write com.apple.SubmitDiagInfo "AutoSubmit" -bool "false"

## Disable Siri analytics
defaults write com.apple.Siri "Analytics Opt Out" -bool "true"

## Disable Siri
defaults write com.apple.Siri "StatusMenuVisible" -bool "false"

# Terminal
## Set iTerm2 as the default terminal
defaults write com.apple.terminal AppleTerminal -string "iTerm2"
duti -s com.googlecode.iterm2 term

## Set the default shell to zsh
chsh -s /bin/zsh

# Personalization
## Dark mode
defaults write NSGlobalDomain "AppleInterfaceStyle" -string "Dark"

## Wallpaper
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Library/Desktop Pictures/Solid Colors/Solid Gray Dark.png"'

## Create Projects folder in home directory
mkdir -p ~/Projects

# Set regional formats
## Force military time
defaults write NSGlobalDomain AppleICUForce24HourTime -bool true

## Set the first day of the week to Monday
defaults write NSGlobalDomain AppleFirstWeekday -dict gregorian 2

## Set the date format
defaults write NSGlobalDomain AppleICUDateFormatStrings -dict-add 1 "dd-MM-yyyy"

## Set the time format
defaults write NSGlobalDomain AppleICUTimeFormatStrings -dict-add 1 "HH:mm:ss"

## Set the currency
defaults write NSGlobalDomain AppleCurrencySymbol -string "USD"

## Set the temperature measurement units
defaults write NSGlobalDomain AppleTemperatureUnit -string "Celsius"

## Set the metric units
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"

## Set the language
defaults write NSGlobalDomain AppleLanguages -array "en"

## Set the locale
defaults write NSGlobalDomain AppleLocale -string "en_US@currency=USD"

## Set the region
defaults write NSGlobalDomain AppleRegion -string "US"

# Apply Changes
## Clean System
USER=`stat -f%Su /dev/console` 

## System Caches
sudo mv /private/var/log/privoxy /private/var/privoxy > /dev/null 2>&1
sudo /bin/rm -rf /private/var/log/* > /dev/null 2>&1
sudo mv /private/var/privoxy /private/var/log/privoxy > /dev/null 2>&1

## System Caches
sudo /bin/rm -rf /Users/$USER/Library/Logs/* > /dev/null 2>&1 & sudo /bin/rm -rf /Library/Logs/DiagnosticReports/*.* > /dev/null 2>&1 & sudo /bin/rm -rf /private/var/tmp/com.apple.messages > /dev/null 2>&1 & sudo /bin/rm -rf /Users/$USER/Library/Caches/* > /dev/null 2>&1 & sudo /bin/rm -rf /private/var/db/diagnostics/*/* > /dev/null 2>&1 & sudo /bin/rm -rf /Library/Logs/DiagnosticReports/ProxiedDevice-Bridge/*.ips > /dev/null 2>&1 & sudo /bin/rm -rf /Users/$USER/Library/Application\ Support/CrashReporter/* > /dev/null 2>&1 & sudo /bin/rm -rf /private/tmp/gzexe* > /dev/null 2>&1

## Safari Caches
sudo /bin/rm -rf /Users/$USER/Library/Containers/com.apple.Safari/Data/Library/Caches/* > /dev/null 2>&1 & sudo /bin/rm -rf /private/var/folders/ry/*/*/com.apple.Safari/com.apple.Safari/com.apple.metal/*/libraries.data > /dev/null 2>&1 & sudo /bin/rm -rf /private/var/folders/ry/*/*/com.apple.Safari/com.apple.Safari/com.apple.metal/*/libraries.maps > /dev/null 2>&1 & sudo /bin/rm -rf /Users/$USER/Library/Containers/io.te0.WebView/Data/Library/Caches/WebKit > /dev/null 2>&1 & sudo /bin/rm -rf /Users/$USER/Library/Safari/History.db* > /dev/null 2>&1 & sudo /bin/rm -rf /Users/$USER/Library/Safari/RecentlyClosedTabs.plist > /dev/null 2>&1 & sudo /bin/rm -rf /Users/$USER/Library/Safari/CloudHistoryRemoteConfiguration.plist > /dev/null 2>&1

## Clean Download History
sudo sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent' > /dev/null 2>&1

## Clean Terminal History
sudo /bin/rm -rf /Users/$USER/.bash_sessions/* > /dev/null 2>&1 & sudo /bin/rm -rf /Users/$USER/.bash_history > /dev/null 2>&1 & sudo /bin/rm -rf /Users/$USER/.zsh_sessions/* > /dev/null 2>&1 & sudo /bin/rm -rf /Users/$USER/.zsh_history > /dev/null 2>&1

#Applications Caches
for x in $(ls ~/Library/Containers/) 
do 
    echo "Cleaning ~/Library/Containers/$x/Data/Library/Caches/"
    rm -rf ~/Library/Containers/$x/Data/Library/Caches/*
done

## Clean Homebrew
brew cleanup
brew cleanup --cask

## Restart Apps
killall Dock
killall SystemUIServer
killall Safari
killall Finder
killall Terminal
killall Xcode
killall TextEdit
killall Activity\ Monitor
killall Messages
killall Music
