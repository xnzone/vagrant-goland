#!/usr/bin/env bash
set -e
wget http://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh

bash ~/miniconda.sh -b -p $HOME/.conda
~/.conda/bin/conda init $(echo $SHELL | awk -F '/' '{print $NF}') 
echo 'Successfully installed miniconda...'
echo -n 'conda version:'
~/.conda/bin/conda --version
rm -rf ~/miniconda.sh
echo -e '\n'