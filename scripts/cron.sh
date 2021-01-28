#!/bin/bash

# Dependencies
pip install -r requirements.txt

# Update the trusted tools.
make fix
make lint
make update_trusted

# Commit changes
git add *.lock
git commit -m "Updated trusted tools ($(date -I))" || true
git push

# Apply the changes
make install GALAXY_SERVER=http://galaxy.bioinformatics-atgm.nl/ GALAXY_API_KEY=$GALAXY_ADMIN_API_KEY
