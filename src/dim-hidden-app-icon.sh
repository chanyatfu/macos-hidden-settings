#!/bin/zsh

# TRUE will dim hidden app icons in the Dock, FALSE do otherwise
SHOW_HIDDEN=TRUE

defaults write com.apple.dock showhidden -bool $SHOW_HIDDEN
if $SHOW_HIDDEN
then echo "Hidden app icons will be dimmed in the Dock."
else echo "Hidden app icons will not be dimmed in the Dock."
fi
