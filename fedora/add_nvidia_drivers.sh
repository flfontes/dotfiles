#! /usr/bin/bash

sudo dnf install -y \
	https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
	https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf group upgrade -y core
# sudo dnf4 group update -y core

sudo dnf install -y akmod-nvidia

