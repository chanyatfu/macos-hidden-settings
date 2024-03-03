#!/bin/zsh

cd src
for file in *
do
    chmod +x $file
    if [[ $file == sudo-* ]];
    then sudo ./$file
    else ./$file
    fi
done
killall Dock
killall SystemUIServer
