#!/bin/bash
# Script for backing up VMs

echo "test) Backup test"
echo "www) Backup www"
echo "auth) Backup auth"
read -p "Please enter the name of the VM you wish to backup: " VM

case $VM in
	test)	  
	  sudo rsync -az -e ssh /etc admin@192.168.1.87:/NEW_TANK/BACKUPS/$VM
	  sudo rsync -az -e ssh /home admin@192.168.1.87:/NEW_TANK/BACKUPS/$VM
	  ssh admin@192.168.1.87
	  ls /NEW_TANK/BACKUPS/$VM
	  ;;
	www)
	  sudo rsync -az -e ssh /etc admin@192.168.1.87:/NEW_TANK/BACKUPS/$VM
	  sudo rsync -az -e ssh /home admin@192.168.1.87:/NEW_TANK/BACKUPS/$VM
	  sudo rsync -az -e ssh /var/www admin@192.168.1.87:/NEW_TANK/BACKUPS/$VM
	  ;;
	auth)
	  sudo rsync -az -e ssh /etc admin@192.168.1.87:/NEW_TANK/BACKUPS/$VM
	  sudo rsync -az -e ssh /home admin@192.168.1.87:/NEW_TANK/BACKUPS/$VM
	  sudo rsync -az -e ssh /var/named admin@192.168.1.87:/NEW_TANK/BACKUPS/$VM
	  sudo rsync -az -e ssh /var/lib/ldap admin@192.168.1.87:/NEW_TANK/BACKUPS/$VM
	  ;;
	*)
	  echo "Invalid option!"
	  ;;
esac
	
