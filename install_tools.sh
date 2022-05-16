#!/bin/sh

#Install nginx
#sudo apt-get update
#sudo apt-get -y install nginx 
#sudo systemctl enable nginx
#sudo systemctl start nginx
#sudo nginx -t

#Install docker
sudo apt-get -y update
sudo apt-get install ca-certificates curl gnupg lsb-release
echo "install certificates succesfully"
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "Download gpg successfully"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get -y update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
#sudo usermod -aG docker $USER
#sudo reboot
echo "Docker install successfully"

