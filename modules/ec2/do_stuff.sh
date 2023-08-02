#! /bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html

sudo apt install mysql -y

# install some other stuff i like
sudo apt update -y
sudo apt install fish -y
sudo apt install net-tools -y
sudo usermod -s /usr/bin/fish
sudo chsh -s /usr/bin/fish

