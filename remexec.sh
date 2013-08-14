#!/bin/bash
echo 'vitech2010!' | sudo -S ls
vers=`cat /etc/issue | awk '{print $5}'`
#sudo echo "172.26.38.107" >> /etc/resolv.conf
if [[ "$vers" == *5* ]]
then
sudo cd /etc/yum.repos.d/
sudo mv /etc/yum.repos.d/public-yum-el5.repo /etc/yum.repos.d/public-yum-el5.repo.old
sudo wget http://public-yum.oracle.com/public-yum-el5.repo
else
sudo cd /etc/yum.repos.d/
sudo mv /etc/yum.repos.d/public-yum-ol6.repo /etc/yum.repos.d/public-yum-ol6.repo.old
sudo wget http://public-yum.oracle.com/public-yum-ol6.repo
fi
sudo yum clean all
sudo yum check-update
cd /tmp
sudo wget https://store.scalextreme.com/swinstall/download/rpm64-o34r40j6sayl/scalextreme-x86_64.rpm
sudo rpm -Uvh /tmp/scalextreme-x86_64.rpm

