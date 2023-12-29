#!/bin/sh

# Author : coder-eb
# Script follows here:

# Remove existing files
rm ~/.oh-my-zsh/custom/functions.zsh
rm ~/.oh-my-zsh/custom/aliases.zsh

# Create symlinks (soft)
ln -s zsh/functions.zsh ~/.oh-my-zsh/custom/functions.zsh
ln -s zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
ln -s zsh/.zshrc ~/.zshrc

ln -s ~/.zshrc zsh/.zshrc