# install snap
echo "Installing Snap"

apt update
yes | apt install snapd
snap install core

# remove certbot
echo "Removing Snap"
yes | apt-get remove certbot

echo "Install Certbot"
snap install --classic certbot
ln -s /snap/bin/certbot /usr/bin/certbot
certbot certonly --standalone -n  -d $1 --agree-tos -m $2

echo "Copy cert & key to path"

mkdir -p /data/coolify/proxy/certs
cp /etc/letsencrypt/live/$1/fullchain.pem /data/coolify/proxy/certs/$1.pem


echo "Your certs are in the following location:"
echo "Full Chann: /data/coolify/proxy/certs/$1.pem"









