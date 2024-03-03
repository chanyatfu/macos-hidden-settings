#!/bin/zsh

# 1 is the default value, 0 show the dock immediately,
# value larger than 1 will delay the dock show up
AUTOHIDE_DELAY_VALUE=0

defaults write com.apple.dock autohide-delay -float $AUTOHIDE_DELAY_VALUE
echo "Set Dock's autohide delay value as" $AUTOHIDE_DELAY_VALUE
