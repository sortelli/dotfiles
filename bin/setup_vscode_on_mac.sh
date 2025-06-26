#!/usr/bin/env bash

function set_defaults() {
  local app_id="$1"

  defaults write "$app_id" ApplePressAndHoldEnabled -bool false
  defaults write "$app_id" NSAutomaticPeriodSubstitutionEnabled -bool false
}

set_defaults "com.microsoft.VSCode"            # Vscode
set_defaults "com.todesktop.230313mzl4w4u92"   # Cursor

# Cursor's app id was found via the following command
#     % osascript -e 'id of app "Cursor"'
#     com.todesktop.230313mzl4w4u92
