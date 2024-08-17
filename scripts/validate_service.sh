#!/bin/bash

# URL to check
URL="http://localhost:8000"

# Make an HTTP request to the application
STATUS_CODE=$(curl --write-out "%{http_code}" --silent --output /dev/null "$URL")

# Check if the status code is 200 (OK)
if [ "$STATUS_CODE" -eq 200 ]; then
  echo "Application is running."
  exit 0
else
  echo "Application is not running. Status code: $STATUS_CODE"
  exit 1
fi