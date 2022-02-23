#!/bin/bash
#Description:Automate Sonarqube dowload
#Author: rosine
#Date : february 2022

echo "Installation of sonarqube in progress"
sleep 2

sleep 2
sudo yum update -y
sleep 2
sudo yum install java-11-openjdk-devel -y
sleep 2
sudo yum install java-11-openjdk -y
sleep 2
cd /opt 
sleep 2
sudo yum install wget -y
sleep 2
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sleep 2
sudo yum install unzip -y
sleep 3
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sleep 2
 sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
sleep 2
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
sleep 2
./sonar.sh start
sleep 2
echo
echo "package installed successfully and running"
