#!/bin/bash
#sudo apt-get update
sudo apt-get install docker.io -y
sudo usermod -aG docker $USER   #my case is ubuntu
newgrp docker
sudo chmod 777 /var/run/docker.sock

#!/bin/bash
sudo apt update -y
sudo apt install fontconfig openjdk-17-jre -y
java -version
openjdk version "17.0.8" 2023-07-18
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key |sudo gpg --dearmor -o /usr/share/keyrings/jenkins.gpg
sudo sh -c 'echo deb [signed-by=/usr/share/keyrings/jenkins.gpg] http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update -y
sudo apt  install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins


docker run -d --name sonar -p 9000:9000 sonarqube:lts-community