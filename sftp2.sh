#!/bin/bash
HOST="ftp.vitechinc.com"
USER="seiuhosted"
PASS="seiuhosted##"

EXEC=$(expect -c "
spawn /usr/bin/sftp -o \"BatchMode no\" -b /home/pjoseph/cmd $USER@$HOST
expect \"password:\"
send \"$PASS\r\"
interact
")

echo "$EXEC"

#cat /home/user/output/* > /home/$(/bin/date +%m-%d-%Y-%H:%M:%S).txt
#rm -rf /home/user/output/*
