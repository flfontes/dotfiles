#! /usr/bin/bash

#######################
# SYSTEM INSTALLATION #
#######################

# Set HOSTNAME ----

# I like to name all my machines at the house based on Norse Mythology, with
# my personal machine being named Odin (and any HDD named after Odin's crows,
# Huggin and Munnin)... What can I say, I'm a proud geek!

sudo hostnamectl set-hostname "Odin"


# Updates Firmware ----
sudo fwupdmgr refresh --force
sudo fwupdmgr get-devices # Lists devices with available updates
sudo fwupdmgr get-updates # Fetches list of available updates
sudo fwupdmgr update


# Install Ghostty ----
source ./ghostty/install_ghostty.sh


# Install NeoVim ----
source ./nvim/install_neovim


# Install Nerd Fonts ----
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip \
    && cd ~/.local/share/fonts \
    && unzip JetBrainsMono.zip \
    && rm JetBrainsMono.zip \
    && fc-cache -fv


# Install Rust ----
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


# Install Starship ----
curl -sS https://starship.rs/install.sh | sh


# SSH Configuration ----
source ./ssh/config_ssh.sh


# Install UV ----
curl -LsSf https://astral.sh/uv/install.sh | sh \
    && source $HOME/.local/bin/env


# Install Python Tools
uv tool install ruff
uv tool install pytest
uv tool install poethepoet

# Install other apps ----

## bat is a better version of cat
## btop provides a better version of top/htop
## fastfetch is the modern neofetch
## fzf is a modern fuzzy finder
## tmux is a terminal multiplexer
sudo dnf install -y bat \
    btop \
    fastfetch \
    fzf \
    tmux


# Fedora tweaks
source ./fedora/fix_closing_lid_action.sh


# Reload Bash Configuration ----
exec bash
