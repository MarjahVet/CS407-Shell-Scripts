#!/bin/bash

echo "Choose an option:"
echo "1) Log into test VM"
echo "2) Log into wwww VM"
echo "3) Log into auth VM"
echo "4) Log into files VM"
read -p "Enter your choice: " choice

case $choice in
  1)
    ssh admin@192.168.1.84
    ;;
  2)
    ssh admin@192.168.1.85
    ;;
  3)
    ssh admin@192.168.1.86
    ;;
  4)
    ssh admin@192.168.1.87
    ;;
  *)
    echo "Invalid option!"
    ;;
esac
