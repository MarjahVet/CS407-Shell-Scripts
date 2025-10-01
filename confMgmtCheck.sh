echo "Checking hostname"
hostnamectl | grep "Static hostname"
echo " "

echo "Checking network configuration"
nmcli con show ens18 | grep "ipv4.addresses"
nmcli con show ens18 | grep "ipv4.gateway"
nmcli con show ens18 | grep "ipv4.dns:"
nmcli con show ens18 | grep "ipv4.method"
echo " "

echo "Checking standard packages installation"
man --version
dnf list installed wget netcat telnet rsync openssh-server
echo " "

echo "Checking SSH Service is enabled and active"
systemctl status sshd | grep "Loaded:"
systemctl status sshd | grep "Active:"
echo " "

echo "Checking systemd service and timer are enabled and scheduled"
systemctl list-timers | grep cs407updater

