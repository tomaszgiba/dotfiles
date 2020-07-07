#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #

sudo apt install -y curl ssh tree zsh vim git htop mc xclip docker docker-compose virtualbox \ 
&& sudo usermod -aG docker $USER \ 
&& sudo systemctl enable docker \ 
&& snap install code \ 
&& snap install slack

} # this ensures the entire script is downloaded #
