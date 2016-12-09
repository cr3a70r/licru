#!/bin/sh

# Regenerate ALL sshd keys for current PC
# Заново сгенерировать все SSHD ключи для текущего компьютера

# Origin - https://gist.github.com/vodolaz095/9b00d7dfbc5cfc11f1ee

sudo ssh-keygen -q -f /etc/ssh/ssh_host_key -N '' -t rsa1
sudo ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
sudo ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa
sudo ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa -b 521