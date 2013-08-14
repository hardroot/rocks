#!/bin/bash
vers=`cat /etc/issue | awk '{print $5}'`
echo $vers
