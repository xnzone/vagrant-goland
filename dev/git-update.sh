#!/usr/bin/env bash

echo "Update git"
echo "\n" | sudo add-apt-repository ppa:git-core/ppa
sudo apt update && sudo apt install git -y
git config --global http.sslverify false