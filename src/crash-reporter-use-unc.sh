#!/bin/zsh

# TRUE set the crash reporter to use UNC, FALSE do otherwise
USE_UNC=TRUE

defaults write com.apple.CrashReporter UseUNC -bool $USE_UNC
if $USE_UNC
then echo "Set crash reporter to use UNC"
else echo "Set crash reporter to not use UNC"
fi
