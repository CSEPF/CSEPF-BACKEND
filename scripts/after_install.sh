#!/bin/bash

# Navigate to the application directory
cd /csepf

# Create a virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Apply Django migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput