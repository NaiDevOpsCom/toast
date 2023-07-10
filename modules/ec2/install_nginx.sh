#! /bin/bash

sudo apt get update
sudo systemctl enable nginx
sudo systemctl start nginx

sudo apt install fish 
sudo usermod -s /usr/bin/fish