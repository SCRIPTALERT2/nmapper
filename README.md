# nmapper
Simple nmap automation for the OSCP. 

Scans all TCP ports and the top 100 UDP ports for each IP in the input text file.

Outputs a subdirectory for each IP address and a .txt file containing the nmap TCP scan for all ports and the top 100 UDP ports.

### Usage

`sudo ./nmapper.sh ips.txt`
