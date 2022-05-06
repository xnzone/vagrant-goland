#!/usr/bin/env bash

echo "Update git"
sudo add-apt-repository ppa:git-core/ppa
sudo apt update && sudo apt install git -y