#!/usr/bin/env bash

# 安装允许通过https才能用的包
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
# 添加GPG密钥
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# docker添加到apt源
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# 安装docker
sudo apt update && sudo apt install -y docker-ce