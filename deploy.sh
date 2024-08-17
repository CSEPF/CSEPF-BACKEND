#!/bin/bash

# Update the package list and install necessary packages
sudo apt-get update
sudo apt-get install -y python3-pip python3-dev libpq-dev curl

# Navigate to the application directory
cd /home/ubuntu/csepf-api

# Install Python dependencies
pip3 install -r requirements.txt

# Apply database migrations
python3 manage.py migrate

# Collect static files
python3 manage.py collectstatic --noinput

# Configure Gunicorn
sudo cp /home/ubuntu/csepf-api/gunicorn.service /etc/systemd/system/

# Start and enable Gunicorn
sudo systemctl start gunicorn
sudo systemctl enable gunicorn