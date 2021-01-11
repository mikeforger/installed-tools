#!/bin/bash

# Fetch latest code
git fetch origin
git checkout --reset hard origin/master

# Dependencies
if [[ ! -d ~/.cache/tools-venv ]] ; then
	virtualenv ~/.cache/tools-venv
fi
. ~/.cache/tools-venv/bin/activate
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
make install GALAXY_SERVER=http://bioinf-galactus/ API_KEY=$GALAXY_ADMIN_API_KEY
