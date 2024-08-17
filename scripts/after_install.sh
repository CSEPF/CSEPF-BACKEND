#!/bin/bash

# Ensure the application directory exists
APP_DIR="/webapps/csepf"
if [ ! -d "$APP_DIR" ]; then
  echo "Application directory $APP_DIR does not exist. Creating it."
  mkdir -p "$APP_DIR"
fi

# Navigate to the application directory
cd "$APP_DIR"

# Create a virtual environment if it doesn't exist
VENV_DIR="/home/ubuntu/aws_venv"
if [ ! -d "$VENV_DIR" ]; then
  echo "Creating virtual environment at $VENV_DIR"
  sudo python3 -m venv "$VENV_DIR"
  sudo chown -R $USER:$USER "$VENV_DIR"
fi

# Activate the virtual environment
source "$VENV_DIR/bin/activate"

# Install dependencies
pip install -r requirements.txt

# Apply Django migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput
