#!/bin/bash
cd my_new_app && git pull
mv my_new_app/*.html /usr/share/nginx/html
nginx -g daemon off;
