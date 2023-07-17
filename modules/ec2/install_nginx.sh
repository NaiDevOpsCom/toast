#!/bin/bash

sudo apt update
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

# install some other stuff i like
sudo apt update -y
sudo apt upgrade -y
sudo apt install fish -y
sudo apt install net-tools -y
sudo usermod -s /usr/bin/fish
sudo chsh -s /usr/bin/fish

