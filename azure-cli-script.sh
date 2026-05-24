#!/bin/bash

# Resource Group
az group create \
--name vm-linux-free-group \
--location chilecentral

# VM Linux
az vm create \
--resource-group vm-linux-free-group \
--name vm-linux-free \
--image almalinux:almalinux-x86_64:10-gen2:latest \
--admin-username admlnx \
--generate-ssh-keys \
--size Standard_B2ats_v2

# Abrir portas
az vm open-port \
--resource-group vm-linux-free-group \
--name vm-linux-free \
--port 22

az vm open-port \
--resource-group vm-linux-free-group \
--name vm-linux-free \
--port 8080

az vm open-port \
--resource-group vm-linux-free-group \
--name vm-linux-free \
--port 8082

az vm open-port \
--resource-group vm-linux-free-group \
--name vm-linux-free \
--port 9092

# Docker
sudo dnf install -y docker
sudo systemctl enable docker
sudo systemctl start docker

# Ferramentas
sudo dnf install -y git nano

# Docker Compose
sudo curl -L \
https://github.com/docker/compose/releases/download/v2.24.6/docker-compose-linux-x86_64 \
-o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker --version
git --version
nano --version
