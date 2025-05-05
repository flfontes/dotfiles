#! /usr/bin/bash

########################
# GHOSTTY INSTALLATION #
########################

sudo dnf copr enable -y pgdev/ghostty \
    && sudo dnf install -y ghostty
