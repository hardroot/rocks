#!/bin/bash
#vers=`cat /etc/issue | awk '{print $5}'`
vers=`lsb_release -a | grep Distributor | awk '{print $3}'`
bits=`uname -i`
#echo "172.26.38.107" >> /etc/resolv.conf
installrh()
{
yum clean all
yum check-update
cd /tmp
wget https://store.scalextreme.com/swinstall/download/rpm64-o34r40j6sayl/scalextreme-x86_64.rpm
rpm -Uvh /tmp/scalextreme-x86_64.rpm
}
installub()
{
apt-get update
cd /tmp
wget https://store.scalextreme.com/swinstall/download/deb64-o34r40j6sayl/scalextreme-x86_64.deb
dpkg -i /tmp/scalextreme-x86_64.deb
}
if [[ "$vers" == *Enterprise* ]]
then
echo $vers
cd /etc/yum.repos.d/
mv /etc/yum.repos.d/public-yum-el5.repo /etc/yum.repos.d/public-yum-el5.repo.old
wget http://public-yum.oracle.com/public-yum-el5.repo
installrh
fi
if [[ "$vers" == *OracleServer* ]]
then
echo $vers
cd /etc/yum.repos.d/
mv /etc/yum.repos.d/public-yum-ol6.repo /etc/yum.repos.d/public-yum-ol6.repo.old
wget http://public-yum.oracle.com/public-yum-ol6.repo
installrh
fi
if [[ "$vers" == *CentOS* && "bits" == *64* ]]
then
echo $vers
installrh
fi
if [[ "$vers" == *Ubuntu* ]]
then
echo $vers
installub
fi
