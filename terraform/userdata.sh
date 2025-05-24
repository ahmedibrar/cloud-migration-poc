#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf
sudo systemctl enable httpd
sudo systemctl start httpd