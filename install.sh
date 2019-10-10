#########################################################################
#Syslog for Raspberry Pi                                                #
#This script will enable and configure rsyslog for Raspberry Pi         #
#This script was written by Paolo Porqueddu                             #
#Visit my website for more interesting project   www.paolo9785.com      #
#########################################################################

#!/bin/bash

if [ "$(whoami)" != "root" ]; then
	echo "Run script as ROOT please. (sudo !!)"
	exit
fi
#prepare template for syslog logs
touch /etc/rsyslog.d/rsyslog.conf
echo '$template Mytemplate,"%$year%-%$month%-%$day% %timegenerated:12:19:date-rfc3339% %HOSTNAME% %syslogseverity-text:0:3:uppercase% %msg%\n"' > /etc/rsyslog.d/rsyslog.conf
