#!/bin/bash

HOST='ftp.vitechinc.com'
USER='seiuhosted'
PASSWD='seiuhosted##'

ftp -i -n $HOST << vitech
user ${USER} ${PASSWD}

binary
cd Newfolder
lcd ftptest
#put *
get *
