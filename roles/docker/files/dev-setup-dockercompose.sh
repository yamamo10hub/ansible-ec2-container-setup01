#!/bin/bash

EXIST_DOCKER=`rpm -qa | grep docker-`
EXIST_DOCKER_COMPOSE=`ls /usr/local/bin/docker-compose`

if [[ $EXIST_DOCKER =~ docker- ]]; then
  if [[ ! $EXIST_DOCKER_COMPOSE =~ /usr/local/bin/docker-compose ]]; then
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
    ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
    echo "docker-compose install finished."
  else
    echo "docker-compose already exist."
    exit 1
  fi
else
  echo "docker not found."
  exit 1
fi
