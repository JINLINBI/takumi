#!/bin/bash

# ==========================================================
# Zsh
# ==========================================================
cd zsh
# Install zsh config
if [ ! -d ~/.zprezto/ ];then
   ./install/install.sh
fi
./build.sh &

# ==========================================================
# Tmux
# ==========================================================
cd ../tmux
./build.sh

# ==========================================================
# Vim
# ==========================================================
cd ../nvim
./install/install.sh

# ==========================================================
# Vim
# ==========================================================
cd ../vim
./install/install.sh

# ==========================================================
# Clean
# ==========================================================
killall zsh vim nvim