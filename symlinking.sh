#! /usr/bin/bash

##############
# SYMLINKING #
##############


## Bash
ln -s $(pwd)/bash ~/.config
rm ~/.bashrc
ln -s ~/.config/bash/bashrc ~/.bashrc


## Functions
ln -s $(pwd)/functions ~/.config


## Git
ln -s $(pwd)/git ~/.config
ln -s ~/.config/git/gitconfig ~/.gitconfig


## NeoVim
ln -s $(pwd)/nvim ~/.config


## Scripts
ln -s $(pwd)/scripts ~/.config


## Starship
ln -s $(pwd)/starship/starship.toml ~/.config


## Tmux
ln -s $(pwd)/tmux/ ~/.config
