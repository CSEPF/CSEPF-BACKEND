!/bin/bash

# Update package list
sudo apt-get update

# Install necessary packages
sudo apt-get install -y python3 python3-pip python3-venv

# Create a virtual environment
python3 -m venv /home/ubuntu/aws_venv

# Activate the virtual environment
source /home/ubuntu/aws_venv/bin/activate

sudo chmod a+w /home/ubuntu/aws_venv/lib/python3.12/site-packages
sudo chmod a+w /home/ubuntu/aws_venv/venv/bin

# Install AWS CLI within the virtual environment
pip install awscli --upgrade

# Deactivate the virtual environment
deactivate