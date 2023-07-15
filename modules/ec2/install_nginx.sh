#! /bin/bash

sudo apt update
sudo apt install nginx
sudo systemctl enable nginx
sudo systemctl start nginx

sudo apt install fish 
sudo apt install net-tools
sudo usermod -s /usr/bin/fish