#!/bin/bash
# Shell script for updating OS and creating system service/timer

# Part 1 update OS and install packages

dnf update -y 

dnf install -y man wget netcat telnet rsync


# Part 2 creating system service and timer

cd /etc/systemd/system/

cat > cs407updater.service << "End"
[Unit]
Description=CS407 Daily Updater Service

[Service]
Type=oneshot
ExecStart=/usr/bin/dnf -y update
End

cat > cs407updater.timer << "End"
[Unit]
Description=Run cs407updater daily at 03:00 AM

[Timer]
OnCalendar=*-*-* 03:00:00
Persistent=true

[Install]
WantedBy=timers.target
End

systemctl daemon-reload
systemctl enable --now cs407updater.timer

systemctl list-timers | grep cs407updater
