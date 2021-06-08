#!/bin/bash
#
# Runs TCP nmap scans for all ports and UDP scans for the top 100 ports and saves the output
#
# Run with sudo permissions so that SYN and UDP scans work.
#  

green="\e[0;92m"
blue="\e[0;94m"
red="\e[0;91m"

if [ "$#" -ne 1 ]
then
  echo "Usage: ./nmapper.sh <ip_file.txt>"
  exit 1
fi

if [ "$EUID" -ne 0 ]
  then echo -e "${red}WARNING: 'nmapper.sh' must be run with sudo privileges.\n\nExiting..."
  exit 1
fi

for ip in `cat $1` 
do
        mkdir $ip
        echo -e "${green}Running nmap TCP scan on all ports for host: $ip"
        sudo nmap -sV -sC -p- $ip > $ip/nmap.tcpall
        echo -e "${green}Done."
        echo -e "${green}Running nmap UDP scan on top 100 ports for host: $ip"
        sudo nmap -sU -sV --top-ports 100 $ip > $ip/nmap.udp100
        chmod 777 -R $ip
        echo -e "${green}Done."
done
echo -e "${blue}\n\nAll scans complete."
exit 0
