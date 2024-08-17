#!/bin/bash
# before_install.sh

# Update the package repository
sudo apt-get update -y

# Stop the existing application if it's running
sudo systemctl stop csepf-api