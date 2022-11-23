#!usr/bin/bash

echo "Creating file repository configuration.........."
# Create the file repository configuration:
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'


echo "Importing repository signing key.........."
# Import the repository signing key:
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -


echo "Updating package lists.........."
# Update the package lists:
sudo apt-get update


echo "Installing POSTGRESQL-15.........."
# Install the latest version of PostgreSQL.
# If you want a specific version, use 'postgresql-12' or similar instead of 'postgresql':
sudo apt-get -y install postgresql-15
