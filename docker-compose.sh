#!/usr/bin/env bash

sudo curl -Lk "https://hub.fastgit.xyz/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose