#!/bin/bash
#
# Install Stunnel Files
#
# Check if the config file is there and has a real IP address in it.
# If so, copy it over the current stunnel config file.
# Then copy the server certificate and key to stunnel key file.

# -------------
# Config
conf="stunnel.conf"

if [ -e ${conf} ]; then
	if [ "$(/bin/grep 'A.B.C.D' ${conf})" == "" ]; then
		cp stunnel.conf /etc/stunnel/stunnel.conf
		mkdir -p /var/run/stunnel4/
		mkdir -p /var/log/stunnel4/
	else
		echo "Change A.B.C.D in ${conf} to the server's IP."
	fi
else
	echo "Create an stunnel.conf or use one of the examples."
fi

# -------------
# Keys

if [ -e "fullchain.pem" ]; then
	cp fullchain.pem /etc/stunnel/stunnel.fullchain.pem
else
	echo "Did not find fullchain.pem, install to /etc/stunnel/stunnel.fullchain.pem"
fi

if [ -e "privkey.pem" ]; then
	cp privkey.pem /etc/stunnel/stunnel.key.pem
else
	echo "Did not find privkey.pem, install to /etc/stunnel/stunnel.key.pem"
fi


