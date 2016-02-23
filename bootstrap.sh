#!/usr/bin/env bash   
echo "installing base packages"
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y libz-dev
sudo apt-get install -y python3 python3-pip
sudo apt-get install -y libxml2 libxml2-dev libxslt-dev
sudo pip3 install virtualenv
sudo pip3 install
sudo apt-get install -y openjdk-7-jre
sudo apt-get install -y ant
sudo /vagrant/exist/tools/wrapper/bin/exist.sh install
