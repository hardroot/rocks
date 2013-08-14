#!/usr/bin/expect

spawn  sftp  -b cmd.sh seiuhosted@ftp.vitechinc.com
expect "password:"
send "seiuhosted##\n";
interact
