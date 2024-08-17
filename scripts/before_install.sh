#!/bin/bash

# Update package list
sudo apt-get update

# Install necessary packages
sudo apt-get install -y python3 python3-pip python3-venv

# Install AWS CLI
pip3 install awscli --upgrade