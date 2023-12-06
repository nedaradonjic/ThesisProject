#!/usr/bin/env bash
# Navigate to the travelagency directory
cd /opt/render/project/travelagency

# Install dependencies
pip install -r requirements.txt

# Run Django management commands
python manage.py collectstatic --no-input
python manage.py migrate
