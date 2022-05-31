#!/usr/bin/env bash

echo "Installing zsh"
sudo apt update && sudo apt install zsh -y
# echo "vagrant" | chsh -s $(which zsh)

echo "Install oh-my-zsh"
sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh \
    | sed 's|^REPO=.*|REPO=${REPO:-mirrors/oh-my-zsh}|g' \
    | sed 's|^REMOTE=.*|REMOTE=${REMOTE:-https://gitee.com/${REPO}.git}|g')"

