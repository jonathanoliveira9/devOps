#!/bin/bash

echo "Updating server"
echo "-------------------"

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install apache2 -y
sudo apt-get install git -y

echo "Project Croning"
echo "-------------------"
sudo git clone https://github.com/denilsonbonatti/mundo-invertido.git

cd mundo-invertido

sudo cp -R * /var/www/html

echo "Showing Ip Server"
ip a
