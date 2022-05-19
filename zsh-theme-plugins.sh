#!/usr/bin/env bash

echo "change theme"
sed -i 's/robbyrussell/steeef/g' $HOME/.zshrc

echo "Installing zsh-autosuggestions"
git clone https://hub.fastgit.xyz/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i 's/plugins=(/plugins=(zsh-autosuggestions /g' $HOME/.zshrc

source ~/.zshrc

