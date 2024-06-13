# install snap
echo "Installing Snap"

apt update
yes | apt install snapd
snap install core

# remove certbot
echo "Removing Snap"
yes | apt-get remove certbot

