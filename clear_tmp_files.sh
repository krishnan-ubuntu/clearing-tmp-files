#!/bin/sh

#Check if user running this script is root, if not stop execution and print error

if [[ $USER != "root" ]]; then
	echo "This script should be executed as root"
	exit -1 #-1 returns error here
fi

# Navigate to tmp folder

cd /tmp

# Clear all files

rm -r *

# Restart apache

systemctl restart apache2.service

