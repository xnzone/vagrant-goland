#!/usr/bin/env bash

echo "Using aliyun apt mirrors"
sudo sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
sudo sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list

echo "Installing dependencies ..."
sudo apt update
sudo apt install -y curl ca-certificates build-essential git python3 python3-pip less libxext6 libxrender1 libxtst6 libfreetype6 libxi6

echo "Installing go1.16.2"
su vagrant -c 'wget https://golang.google.cn/dl/go1.16.2.linux-amd64.tar.gz'
sudo tar -zxvf go1.16.2.linux-amd64.tar.gz -C /usr/local/
sudo tee -a /etc/profile > /dev/null << EOT
export GOROOT=/usr/local/go
export GOPATH=/home/vagrant/go
export PATH=\$PATH:\$GOROOT/bin:\$GOPATH/bin
EOT

# If someone use zsh, set PATH to ~/.zprofile
tee -a ~/.zprofile > /dev/null << EOT
export GOROOT=/usr/local/go
export GOPATH=/home/vagrant/go
export PATH=\$PATH:\$GOROOT/bin:\$GOPATH/bin
EOT

echo "Using tsinghua pip mirros"
su vagrant -c 'mkdir .pip && touch .pip/pip.conf'
tee -a .pip/pip.conf > /dev/null << EOT
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host = pypi.tuna.tsinghua.edu.cn
EOT

echo "Installing JetBrains Goland ..."
su vagrant -c 'pip3 install -U pip setuptools'
su vagrant -c 'pip3 install projector-installer==1.5.0'
su vagrant -c '/home/vagrant/.local/bin/projector --accept-license autoinstall --ide-name "GoLand 2020.3.2" --config-name goland'

echo "Creating systemd service ..."
sudo touch /etc/systemd/system/jetbrains-goland.service

# /home/vagrant/.local/bin/projector run goland
sudo tee -a /etc/systemd/system/jetbrains-goland.service > /dev/null <<EOT
[Unit]
Description=JetBrains Goland
After=network.target
StartLimitIntervalSec=0
[Service]
Type=simple
Restart=always
RestartSec=1
User=vagrant
ExecStart=/home/vagrant/.projector/configs/goland/run.sh
[Install]
WantedBy=multi-user.target
EOT

echo "Enabling and starting systemd service ..."
systemctl enable jetbrains-goland
systemctl start jetbrains-goland

echo "Cleaning up ..."
sudo apt-get autoclean -y
sudo apt-get clean -y
sudo rm -rf /var/lib/apt/lists/* \
    /var/cache/apt/pkgcache.bin \
    /var/cache/apt/srcpkgcache.bin \
    /home/vagrant/go1.16.2*