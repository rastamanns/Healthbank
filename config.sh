#!/bin/sh

apt-get -y update

logger "installing nginx, tomcat and git"
apt-get -y install nginx tomcat8 git

# Set up unattended installation of MySQL
export DEBIAN_FRONTEND=noninteractive
echo mysql-server-5.7 mysql-server/root_password root | debconf-set-selections
echo mysql-server-5.7 mysql-server/root_password_again root | debconf-set-selections

# Install MySQL
apt-get -y install mysql-server-5.7

logger "All done"
