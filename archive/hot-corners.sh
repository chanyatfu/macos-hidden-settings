#!/bin/zsh

declare -A actions
declare -A modifiers

actions[0]="No Action"
actions[1]="No Action"
actions[2]="Mission Control"
actions[3]="Application Windows"
actions[4]="Desktop"
actions[5]="Start Screen Saver"
actions[6]="Disable Screen Saver"
actions[7]="Dashboard" # Discontinued from macOS Catalina
actions[10]="Put Display to Sleep"
actions[11]="Launchpad"
actions[12]="Notification Center"
actions[13]="Lock Screen"
actions[14]="Quick Note"

modifiers[0]="No Modifier"
modifiers[131072]="Shift"
modifiers[262144]="Control"
modifiers[524288]="Option"
modifiers[1048576]="Command"
modifiers[393216]="Shift + Control"
modifiers[655360]="Shift + Option"
modifiers[1179648]="Shift + Command"
modifiers[786432]="Control + Option"
modifiers[1310720]="Control + Command"
modifiers[1572864]="Option + Command"
modifiers[917504]="Shift + Control + Option"
modifiers[1441792]="Shift + Control + Command"
modifiers[1703936]="Shift + Option + Command"
modifiers[1835008]="Control + Option + Command"
modifiers[1966080]="Shift + Control + Option + Command"

TOP_LEFT_ACTION=13 # Lock Screen
TOP_LEFT_MODIFIER=1048576 # Command
TOP_RIGHT_ACTION=12 # Notification Center
TOP_RIGHT_MODIFIER=1048576 # Command
BOTTOM_LEFT_ACTION=4 # Desktop
BOTTOM_LEFT_MODIFIER=1048576 # Command
BOTTOM_RIGHT_ACTION=11 # Launchpad
BOTTOM_RIGHT_MODIFIER=1048576 # Command

defaults write com.apple.dock wvous-tl-corner -int $TOP_LEFT_ACTION
defaults write com.apple.dock wvous-tl-modifier -int $TOP_LEFT_MODIFIER
defaults write com.apple.dock wvous-tr-corner -int $TOP_RIGHT_ACTION
defaults write com.apple.dock wvous-tr-modifier -int $TOP_RIGHT_MODIFIER
defaults write com.apple.dock wvous-bl-corner -int $BOTTOM_LEFT_ACTION
defaults write com.apple.dock wvous-bl-modifier -int $BOTTOM_LEFT_MODIFIER
defaults write com.apple.dock wvous-br-corner -int $BOTTOM_RIGHT_ACTION
defaults write com.apple.dock wvous-br-modifier -int $BOTTOM_RIGHT_MODIFIER

echo "Set top-left hot corner with" \"${modifiers[$TOP_LEFT_MODIFIER]}\" "as" \"${actions[$TOP_LEFT_ACTION]}\"
echo "Set top-right hot corner with" \"${modifiers[$TOP_RIGHT_MODIFIER]}\" "as" \"${actions[$TOP_RIGHT_ACTION]}\"
echo "Set bottom-left hot corner with" \"${modifiers[$BOTTOM_LEFT_MODIFIER]}\" "as" \"${actions[$BOTTOM_LEFT_ACTION]}\"
echo "Set bottom-right hot corner with" \"${modifiers[$BOTTOM_RIGHT_MODIFIER]}\" "as" \"${actions[$BOTTOM_RIGHT_ACTION]}\"
