#!/bin/bash
cd my_new_app && git pull
mv *.html /usr/share/nginx/html
nginx -g daemon off
