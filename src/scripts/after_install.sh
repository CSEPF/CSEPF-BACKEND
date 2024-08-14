#!/bin/bash
# after_install.sh

# Navigate to the Django project directory and install dependencies
cd /home/ubuntu/csepf-api/src
pip3 install -r requirements.txt

# Collect static files
python3 manage.py collectstatic --noinput

# Apply migrations
python3 manage.py migrate

# run server
screen -d -m python3 manage.py runserver 0:8000

echo "Server started"