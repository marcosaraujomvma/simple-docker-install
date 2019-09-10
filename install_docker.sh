#!/bin/bash

# Docker Install Ubuntu 18.04 LTS
# Autor: Marcos Vinicius Monteiro Araujo


echo "Starting"

echo "==========================================================================================="

echo "Install Repository Multiverse"

sudo add-apt-repository multiverse -y

echo "==========================================================================================="

echo "Update!!!"

sudo apt update -y

echo "==========================================================================================="

echo "Install Language Pack"

sudo apt-get install language-pack-pt -y

echo "==========================================================================================="

echo "Upgrade"

sudo apt upgrade -y

echo "==========================================================================================="

echo "Install apt Package"

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

echo "==========================================================================================="

echo "Dowloading Key Docker"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "==========================================================================================="

echo "Install Repository"

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y

echo "==========================================================================================="

echo "Update"

sudo apt update -y

echo "==========================================================================================="

echo "Upgrade"

sudo apt upgrade -y

echo "==========================================================================================="

echo "Apt Search Docker-ce"

apt-cache policy docker-ce

echo "==========================================================================================="

echo "Install Docker-ce"

sudo apt install docker-ce -y

echo "==========================================================================================="

echo "Upgrade permission"


sysctl -w vm.max_map_count=262144

#sudo usermod -aG docker ${USER}

#echo "Su user docker"

#su - ${USER} 
#echo "id -nG"
#id -nG


#echo "==========================================================================================="

echo "Starting Docker"

sudo systemctl start docker

echo "==========================================================================================="

echo "Enable boot Docker"

sudo systemctl enable docker

echo "==========================================================================================="

echo "Remove Packges Old"

sudo apt autoremove -y


echo "==========================================================================================="

echo "Stop All Containers"


sudo docker stop $(docker ps -a -q)

echo "==========================================================================================="

echo "Remove All Containers"


sudo docker rm $(docker ps -a -q)

echo "==========================================================================================="

echo "Remove All Images"


sudo docker rmi $(docker images -q)

echo "==========================================================================================="


echo "End install"

echo "==========================================================================================="

echo "Enjoy Docker!!!!!!!!!!!!"

