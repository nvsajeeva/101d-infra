#!/bin/bash

sudo yum update –y
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum install git -y
sudo amazon-linux-extras install docker
sudo systemctl enable docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo usermod -a -G docker jenkins
sudo wget -c https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -P /usr/local/
sudo tar -xvzf /usr/local/apache-maven-3.6.3-bin.tar.gz -C /usr/local/
sudo ln -s /usr/local/apache-maven-3.6.3/bin/mvn /sbin/mvn