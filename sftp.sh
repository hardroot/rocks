#!/bin/bash -vx

HOST='ftp.vitechinc.com'
USER='seiuhosted'
PASSWD='seiuhosted##'
sftp $HOSTNAME@$USERNAME <<EOF
put <file>
quit
EOF
#sftp -i -n $HOST <<Arul
#user ${USER} ${PASSWD}

binary
cd /home/arul/backup
put wolf.pdf
get arul.ps

quit
