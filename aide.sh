#!/bin/bash

sudo dnf install -y aide
sudo aide --init
sudo cp /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
sudo aide --check

sudo tee /etc/cron.d/aidecheck >/dev/null <<'End'
# Run aide everyday @ 5:00 am
0 5 * * * root /usr/sbin/aide --check > /var/log/aide/aidecheck.log 
End

sudo mkdir -p /var/log/aide
sudo chmod 700 /var/log/aide
sudo cat /etc/cron.d/aidecheck



