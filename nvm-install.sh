#!/usr/bin/env bash


# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

sh -c "$(curl -fsSL https://gitee.com/mirrors/nvm/raw/v0.39.1/install.sh \
    | sed 's/github.com/hub.fastgit.xyz/g')"