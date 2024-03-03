#!/bin/zsh

# if this is set to TRUE, you can scroll up on the dock
# application icons to view the opened window for the application
SCROLL_TO_OPEN=TRUE

defaults write com.apple.dock scroll-to-open -bool TRUE
if $SCROLL_TO_OPEN
then echo "Set scroll to open in dock"
else echo "Unset scroll to open in dock"
fi
