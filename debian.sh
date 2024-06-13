# install snap
echo "Installing Snap"
apt update
apt install snapd
snap install core

# remove certbot
echo "Removing Snap"
yes| sudo apt-get remove certbot


