#!/bin/bash

# Ensure the application directory exists
APP_DIR="/csepf"
if [ ! -d "$APP_DIR" ]; then
  echo "Application directory $APP_DIR does not exist. Exiting."
  exit 1
fi

# Navigate to the application directory
cd "$APP_DIR"

# Ensure the virtual environment exists
VENV_DIR="/home/ubuntu/aws_venv"
if [ ! -d "$VENV_DIR" ]; then
  echo "Virtual environment $VENV_DIR does not exist. Exiting."
  exit 1
fi

# Activate the virtual environment
source "$VENV_DIR/bin/activate"

# Start the Django application using gunicorn
gunicorn --workers 3 --bind 0.0.0.0:8000 csepf.wsgi:application