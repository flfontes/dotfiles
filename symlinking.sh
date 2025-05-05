#! /usr/bin/bash

##############
# SYMLINKING #
##############


## Bash
ln -s $(pwd)/bash ~/.config
ln -s ~/.config/bashrc ~/.bashrc


## NeoVim
ln -s $(pwd)/nvim ~/.config


## Scripts
ln -s $(pwd)/scripts ~/.config


## Starship
ln -s $(pwd)/starship/starship.toml ~/.config


## Tmux
ln -s $(pwd)/tmux/ ~/.config
