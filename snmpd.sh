#!/bin/bash

if [ ! -e /etc/snmp/snmpd.conf ]
then
echo "rocommunity vitech" >> /etc/snmp/snmpd.conf
fi

/etc/init.d/snmpd restart
chkconfig snmpd on
