passwd

read -rp "Enter the name for this VM: " NAME
hostnamectl set-hostname "$NAME"

read -rp "Enter static IP with CIDR (e.g., 192.168.1.84/24): " IPADDR
nmcli con mod ens18 ipv4.addresses "$IPADDR"
nmcli con mod ens18 ipv4.gateway 192.168.1.1
nmcli con mod ens18 ipv4.dns 192.168.1.4
nmcli con mod ens18 ipv4.method manual
nmcli con up ens18

dnf install -y openssh-server

sytemctl enable --now sshd


