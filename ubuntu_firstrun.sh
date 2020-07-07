#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #

sudo apt install -y curl ssh tree zsh vim git htop mc xclip docker docker-compose virtualbox

while sudo fuser /var/{lib/{dpkg,apt/lists},cache/apt/archives}/lock >/dev/null 2>&1; do
   echo Waiting for other instances of apt to complete...
   sleep 5
done

sudo usermod -aG docker $USER  && sudo systemctl enable docker 

sudo snap install code && sudo snap install slack

} # this ensures the entire script is downloaded #
