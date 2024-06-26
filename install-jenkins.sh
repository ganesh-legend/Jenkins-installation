#!/bin/bash

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
      https://pkg.jenkins.io/debian/jenkins.io-2023.key

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
	   https://pkg.jenkins.io/debian binary/ | sudo tee \
	         /etc/apt/sources.list.d/jenkins.list > /dev/null


sudo apt install fontconfig openjdk-17-jre-headless -y

sudo apt install openjdk-17-jdk -y



sudo apt-get update -y



sudo apt-get install jenkins -y

sudo systemctl enable jenkins 

sudo systemctl start jenkins


