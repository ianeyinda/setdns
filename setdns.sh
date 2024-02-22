#!/bin/bash

# This script can be used to configure dns when  doing the pentest on Active Directory from a linux machine

# A bash script to configure dns for the breachad interface

# run this after establishing breachad vpn

#breachad is the name of the interface you can switch it to whatever  you like

#resolvectl is an update to systemd-resolve 

function breachad {
	resolvectl dns breachad $1
	resolvectl domain breachad $2
	resolvectl dns
	echo "The network dns configure successfully"

}


if [ $# -eq 2 ]
then
	ip=$1
	domain=$2 
	breachad $ip $domain
else
	echo "Usage: $0 <ip> <domain> "
fi
