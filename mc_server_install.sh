#!/bin/bash

sudo apt install wget screen default-jdk
sudo useradd -m -r -d /opt/minecraft minecraft
sudo mkdir /opt/minecraft/survival
sudo wget -O /opt/minecraft/survival/minecraft_server.jar https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar
sudo bash -c "echo eula=true > /opt/minecraft/survival/eula.txt"
sudo chown -R minecraft /opt/minecraft/survival/
sudo touch /etc/systemd/system/minecraft@.service
