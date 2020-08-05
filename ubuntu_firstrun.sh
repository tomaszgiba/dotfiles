#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #

# install cli basics
sudo apt install -y ssh jq tree zsh vim git htop mc

# ..wait for apt to finish 
while sudo fuser /var/{lib/{dpkg,apt/lists},cache/apt/archives}/lock >/dev/null 2>&1; do
   echo Waiting for other instances of apt to complete...
   sleep 5
done

# check if Gnome is present
if ! [ "$(command -v gnome-shell)" ]; then
  sudo apt install -y xclip gnome-tweaks
fi

} # this ensures the entire script is downloaded #
