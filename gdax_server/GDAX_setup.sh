# This bash script should prepare all dependancies for the streaming client.

# Update apt-get.
sudo apt-get update

# Install and update python-pip.
sudo apt-get -y install python-pip
pip install --upgrade pip

# Download relevant packages.
pip install gdax
sudo pip install pymongo

# Run the dang thing!
nohup python gdax_stream.py
