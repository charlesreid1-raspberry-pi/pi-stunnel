#!/bin/bash

echo "ssync ${PORT}/tcp" >> /etc/services

stunnel ./stunnel.rpiclient.rsync.conf

