#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #

sudo apt install -y docker docker-compose virtualbox 

# wait for apt to finish
while sudo fuser /var/{lib/{dpkg,apt/lists},cache/apt/archives}/lock >/dev/null 2>&1; do
   echo Waiting for other instances of apt to complete...
   sleep 5
done

# Install Vundle for vim
FILE=~/.vim/bundle/Vundle.vim
if [ ! -f "$FILE" ]; then
   git clone https://github.com/VundleVim/Vundle.vim.git $FILE
fi

# Set up global gitignore
FILE=~/.gitignore_global
if [ ! -f "$FILE" ]; then
   touch $FILE
   git config --global core.excludesfile $FILE
fi

# Enable Docker
sudo usermod -aG docker $USER  && sudo systemctl enable docker 

# Install Slack + VSCode
sudo snap install code --classic && sudo snap install slack --classic

} # this ensures the entire script is downloaded #

