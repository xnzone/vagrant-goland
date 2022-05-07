#!/usr/bin/env bash

echo "Solve docker command need sudo"
sudo usermod -aG docker vagrant
sudo systemctl restart docker
sudo chmod a+rw /var/run/docker.sock