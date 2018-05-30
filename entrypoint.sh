#!/bin/bash
cd my_new_app && git pull
mv *.html /usr/share/nginx/html
yum install lsof -y
lsof -i
echo "Running Nginx..."
nginx -g "daemon  off;"
