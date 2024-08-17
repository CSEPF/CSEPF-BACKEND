#!/bin/bash

# Navigate to the application directory
cd /webapps/csepf

# Activate the virtual environment
source aws_venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Apply Django migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput