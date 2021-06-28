# nmapper
Simple nmap automation for the OSCP. I made this tool because I felt that Autorecon returned a bit too much output to sift through. The purpose of this tool is to return an digestible output that leaves plenty of room for manual enumeration, while still taking advantage of automation so that you'll have something to look at after completing the BOF machine. 

This is a simple tool that scans all TCP ports and the top 100 UDP ports for each IP in the input text file in a subdirectory for each IP address in the 'ips.txt' input file. 

### Usage

`sudo ./nmapper.sh ips.txt`
