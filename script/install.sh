#!/bin/bash -e

echo '# Intallation start'

echo '## Install epel-release'
sudo rpm -Uvh \
  http://ftp.jaist.ac.jp/pub/Linux/Fedora/epel/6/i386/epel-release-6-8.noarch.rpm


echo '## Fix baseurl'
sudo sed -i \
  -e 's,^#baseurl,baseurl,' \
  -e 's,^mirrorlist=,#mirrorlist=,' \
  -e 's,http://download.fedoraproject.org/pub/epel/,http://ftp.jaist.ac.jp/pub/Linux/Fedora/epel/,' \
  /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel-testing.repo


echo '## Check repolist'
sudo yum repolist


echo '## Install Node.js'
sudo yum install -y nodejs npm redis libicu-devel


echo '## Install CoffeeScript and Hubot'
sudo npm install -g coffee-script hubot


echo '## Install project set up tools: yo and generator-hubot'
sudo npm install -g yo generator-hubot


echo '#Installation finish'

