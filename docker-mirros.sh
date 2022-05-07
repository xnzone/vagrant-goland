#!/usr/bin/env bash

echo "vagrant" | sudo mkdir -p /etc/docker
echo "vagrant" | sudo touch /etc/docker/daemon.json
sudo tee -a /etc/docker/daemon.json > /dev/null << EOT
{
    "registry-mirrors": ["http://registry.docker-cn.com"]
}
EOT