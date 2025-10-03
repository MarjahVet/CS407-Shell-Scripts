#!/bin/bash

chown -R admin:100 /home/admin
chmod 700 /home/admin/.ssh
chmod 600 /home/admin/.ssh/authorized_keys
chmod 755 /home/admin

vi /etc/ssh/sshd_config.d/01-permitrootlogin.conf
