#!/bin/zsh

# TRUE will disable key repeat, FALSE do otherwise
KEY_REPEAT_DISABLED=FALSE

defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool $KEY_REPEAT_DISABLED
if $KEY_REPEAT_DISABLED
then echo "Key repeat disabled"
else echo "Key repeat enabled"
fi
