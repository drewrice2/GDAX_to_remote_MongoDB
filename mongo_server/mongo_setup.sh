# This bash script should set up a MongoDB instance. Largely from MongoDB docs.

# Import the public key used by the package management system.
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv \
  0C49F3730359A14518585931BC711F9BA15703C6

# Create a list file for MongoDB.
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu \
  xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

# Reload local package database.
sudo apt-get update

# Install the MongoDB packages.
sudo apt-get install -y mongodb-org

# Start MongoDB with:
# `sudo service mongod start`

# Restart service with:
# `sudo service mongod restart`
