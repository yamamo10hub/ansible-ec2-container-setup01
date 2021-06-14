#!/bin/bash

#EXIST_DOCKER=`rpm -qa | grep docker-`
EXIST_DOCKER_COMPOSE=`ls /usr/local/bin/docker-compose`
EXIST_OSCHECK=`cat /etc/os-release | grep PRETTY_NAME`

if [[ $EXIST_OSCHECK =~ Amazon ]]; then
#if [[ ! $EXIST_OSCHECK =~ Amazon ]]; then
  if [[ ! $EXIST_DOCKER_COMPOSE =~ /usr/local/bin/docker-compose ]]; then
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
    ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
    echo "[ok] docker-compose install done."
  else
    echo "[skipped] docker-compose already exist."
    #exit 1
  fi
  #ifconfig eth0
else
  echo "[failed] not ec2 host. check target host."
  exit 1
fi

echo "shell exec end."
