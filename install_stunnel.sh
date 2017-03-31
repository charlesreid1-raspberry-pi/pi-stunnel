#!/bin/sh

# potentially old and crusty.
apt-get install stunnel

# make place for run and log
mkdir -p /var/run/stunnel4 /var/log/stunnel4

if [ -e "stunnel.conf" ]; then
	cp stunnel.conf /etc/stunnel/stunnel.conf
else:
	echo "Create an stunnel.conf or use one of the examples."
fi

