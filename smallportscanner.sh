#! /bin/bash
echo "Please enter the ip"
read ip
echo "Please enter the subnet mask"
read subnetmask
echo "Please enter the ports  u wanna to search it if they are open"
read port 
nmap $ip/$subnetmask -p-$port  > /dev/null -oG nmapreport
cat nmapreport | grep open > nmapreport2
cat nmapreport2
rm -r nmapreport
rm -r nmapreport2
