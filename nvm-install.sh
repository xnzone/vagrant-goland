#!/usr/bin/env bash


# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

sh -c "$(curl -fsSL https://gitee.com/mirrors/nvm/raw/master/install.sh \
    | sed 's|^REPO=.*|REPO=${REPO:-mirrors/nvm}|g' \
    | sed 's|^REMOTE=.*|REMOTE=${REMOTE:-https://gitee.com/${REPO}.git}|g')"