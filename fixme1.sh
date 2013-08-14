#!/bin/bash

REMOTE_ADDR="news.vitechinc.com vitech.com yahoo.com"

for hosts in $REMOTE_ADDR; do
/bin/ping -c4 $hosts > /dev/null 2>&1
if [ $? == 0 ]
then
echo "$hosts is reachable"
else
echo "$hosts is not reachable"
fi 
done
