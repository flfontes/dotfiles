#! /usr/bin/bash

# Handling closing the lid
sudo sed -i "s/#HandleLidSwitch=suspend/HandleLidSwitch=ignore/" \
						 /usr/lib/systemd/logind.conf

sudo sed -i "s/#HandleLidSwitchExternalPower=suspend/HandleLidSwitchExternalPower=ignore/" \
						/usr/lib/systemd/logind.conf

sudo sed -i "s/#HandleLidSwitchDocked=ignore/HandleLidSwitchDocked=ignore/" \
						/usr/lib/systemd/logind.conf

if [ ! -d "$/etc/systemd/logind.conf.d" ]; then
  sudo mkdir -p /etc/systemd/logind.conf.d
fi

sudo cp /usr/lib/systemd/logind.conf /etc/systemd/logind.conf.d/

sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
