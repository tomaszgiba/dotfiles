#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #

sudo apt install -y docker docker-compose virtualbox 

# wait for apt to finish
while sudo fuser /var/{lib/{dpkg,apt/lists},cache/apt/archives}/lock >/dev/null 2>&1; do
   echo Waiting for other instances of apt to complete...
   sleep 5
done

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Set up global gitignore
FILE=~/.gitignore_global
if [ ! -f "$FILE" ]; then
   touch $FILE
   git config --global core.excludesfile $FILE
fi

# Enable Docker
sudo usermod -aG docker $USER  && sudo systemctl enable docker 

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Install Slack + VSCode
sudo snap install code --classic && sudo snap install slack --classic

} # this ensures the entire script is downloaded #

