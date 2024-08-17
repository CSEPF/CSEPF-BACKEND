#!/bin/bash

# Navigate to the application directory
cd /csepf

# Activate the virtual environment
source venv/bin/activate

# Start the Django application using gunicorn
gunicorn --workers 3 --bind 0.0.0.0:8000 csepf.wsgi:application