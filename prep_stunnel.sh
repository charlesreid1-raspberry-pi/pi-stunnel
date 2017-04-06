#!/bin/bash

# make place for run and log
mkdir -p /var/run/stunnel4 /var/log/stunnel4

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


