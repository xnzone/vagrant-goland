#!/usr/bin/env bash

echo "Installing zip"
sudo apt update && sudo apt install zip -y

echo "Download protoc-3.6.0"
wget https://github.com/protocolbuffers/protobuf/releases/download/v3.6.0/protoc-3.6.0-linux-x86_64.zip -O ~/protoc.zip

echo "Unzip protoc and export PATH"
mkdir -p ~/.local/protoc
unzip protoc.zip -d ~/.local/protoc/
echo "export PATH=\$PATH:~/.local/protoc/bin" >> ~/.zshrc
source ~/.zshrc

echo "go get protoc-gen-go"
go get -u github.com/golang/protobuf/protoc-gen-go@v1.1.0