#!/bin/bash

# Define the Nginx configuration
NGINX_CONF="/etc/nginx/sites-available/csepf-app"



# Create the Nginx configuration file
cat <<EOL > $NGINX_CONF
server {
    listen 80;
    server_name api.csepf.org;

    location / {
        proxy_pass http://35.175.146.251:8000/api;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}

server {
    listen 80;
    server_name admin.csepf.org;

    location / {
        proxy_pass http://35.175.146.251:8000;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}

server {
    listen 80;
    server_name su.csepf.org;

    location / {
        proxy_pass http://35.175.146.251:8000/su;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}
EOL

# Create a symbolic link to enable the configuration
ln -s $NGINX_CONF /etc/nginx/sites-enabled/

# Test the Nginx configuration
nginx -t

# Restart Nginx to apply the new configuration
systemctl restart nginx