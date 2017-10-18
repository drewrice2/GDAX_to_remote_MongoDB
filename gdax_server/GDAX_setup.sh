# This bash script should prepare all dependancies and launch the streaming
# client.

# Update apt-get.
sudo apt-get update

# Install and update python-pip.
sudo apt-get -y install python-pip
pip install --upgrade pip

# Download relevant packages.
pip install gdax
sudo pip install pymongo

# Run the dang thing!
nohup python gdax_stream.py >/dev/null 2>&1 &

# Note: dumping `nohup.out` to `/dev/null` due to hyper-verbose error messages
# from the GDAX WebsocketClient. This is bad practice and normally not advised.
# This command could be a standard `nohup python gdax_stream.py` if the instance
# storage was large enough. 
