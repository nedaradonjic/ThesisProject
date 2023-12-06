#!/usr/bin/env bash

# Print current directory for debugging
echo "Current directory: $(pwd)"

# Navigate to the travelagency directory
cd /opt/render/project/travelagency

# Print contents of the directory for debugging
echo "Directory contents: $(ls -la)"

# Install dependencies
pip install -r requirements.txt

# Run Django management commands
python manage.py collectstatic --no-input
python manage.py migrate
