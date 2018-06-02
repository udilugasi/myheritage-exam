#!/usr/bin/env bash
sudo rm -Rf /home/vagrant/getting-started-java
echo `ls -la /home/vagrant/` > /tmp/setup.log
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
echo "Setup env var" >> /tmp/setup.log
git clone https://github.com/GoogleCloudPlatform/getting-started-java.git
echo "cloned git repository" >> /tmp/setup.log
cd getting-started-java/helloworld-springboot
echo `pwd` >> /tmp/setup.log
sudo mvn spring-boot:run >> /tmp/setup.log
exit