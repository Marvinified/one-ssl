# install snap
echo "\n\nInstalling Snap\n"

apt update
yes | apt install snapd
snap install core

# remove certbot
echo "\n\nRemoving Snap\n"
yes | apt-get remove certbot

echo "Install Certbot"
snap install --classic certbot
ln -s /snap/bin/certbot /usr/bin/certbot
certbot certonly --standalone -n  -d $1 --agree-tos -m $2

echo "\n\nCopy cert & key to path\n"

cp /etc/letsencrypt/live/$1/fullchain.pem /data/coolify/proxy/certs/$1_cert.pem
cp /etc/letsencrypt/live/$1/privkey.pem /data/coolify/proxy/certs/$1_key.pem


echo "\n\n\n"
echo "Your certs are in the following location\n"
echo "Certificate: /data/coolify/proxy/certs/$1_cert.pem"
echo "PrivateKey: /data/coolify/proxy/certs/$1_key.pem"









