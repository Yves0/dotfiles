#!/bin/sh
# run by Service /etc/systemd/system/root-resume.service
#echo "hook" >> /home/yves/test-hook
ip link set enp4s0 down
systemctl restart ifplugd@enp4s0.service

ip link set wlp5s0 down
systemctl restart netctl-auto@wlp5s0.service
