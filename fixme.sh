#!/bin/bash

REMOTE_ADD="news.vitechinc.com yahoo.com vitech.com"

for hosts in $REMOTE_ADD; do
ping -c4 -w $hosts > /dev/null 2>&1
if [ $? == 0 ]
then echo $hosts reachable
else
echo $hosts not reachable
fi
done
