#!/bin/bash
########################
# Install PreRequisites
########################
sudo apt-get update
echo "Installing Git.." >> /tmp/setup.log
sudo apt-get install -y git
echo "Installing Maven.." >> /tmp/setup.log
sudo apt-get install -y maven
sudo apt-get install -y software-properties-common python-software-properties
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
echo "Installing Java 8.." >> /tmp/setup.log
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
echo "Setting environment variables for Java 8.." >> /tmp/setup.log
sudo apt-get install -y oracle-java8-set-default
echo "Installed Java 8" >> /tmp/setup.log
export MAVEN_OPTS='-Xmx256m -XX:MaxPermSize=128m'

########################
# Jenkins
########################
echo "Installing Jenkins"
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update > /dev/null 2>&1
sudo apt-get -y install jenkins > /dev/null 2>&1

########################
# nginx
########################
echo "Installing nginx"
sudo apt-get -y install nginx > /dev/null 2>&1
sudo service nginx start

########################
# Configuring nginx
########################
echo "Configuring nginx"
cd /etc/nginx/sites-available
sudo rm default ../sites-enabled/default
sudo cp /vagrant/VirtualHost/jenkins /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/jenkins /etc/nginx/sites-enabled/
sudo service nginx restart
sudo service jenkins restart
echo "Success"
