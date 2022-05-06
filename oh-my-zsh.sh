#!/usr/bin/env bash

echo "Installing zsh"
sudo apt update && sudo apt install zsh -y
chsh -s $(which zsh)

echo "Install oh-my-zsh"
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
sed -i 's/robbyrussell/steeef/g' ~/.zshrc

echo "Installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i 's/plugins=(/plugins=(zsh-autosuggestions /g' ~/.zshrc