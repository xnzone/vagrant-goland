#!/usr/bin/env bash

echo "Installing zip"
sudo apt update && sudo apt install zip -y

echo "Download protoc-3.6.0"
wget https://hub.fastgit.xyz/protocolbuffers/protobuf/releases/download/v3.6.0/protoc-3.6.0-linux-x86_64.zip -O $HOME/protoc.zip

echo "Unzip protoc and export PATH"
mkdir -p $HOME/.local/protoc
unzip protoc.zip -d $HOME/.local/protoc/
echo "export PATH=\$PATH:$HOME/.local/protoc/bin" >> $HOME/.zshrc
source $HOME/.zshrc

echo "go get protoc-gen-go"
go get  github.com/golang/protobuf/protoc-gen-go@v1.1.0

echo "go get protoc-gen-gofast"
go get  github.com/gogo/protobuf/protoc-gen-gofast@v1.3.2