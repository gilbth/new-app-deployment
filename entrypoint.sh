#!/bin/bash
cd my_new_app && git pull
mv *.html /usr/share/nginx/html
echo "Running Nginx..."
nginx -g "daemon  off;"
