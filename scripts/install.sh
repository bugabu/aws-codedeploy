#!/bin/bash
sudo yum install -y nginx
sudo rm -f /etc/nginx/nginx.conf
sudo systemctl start nginx
sudo systemctl enable nginx