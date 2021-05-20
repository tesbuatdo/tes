sudo apt update
sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt -y install gcc g++ make
## Confirming "xenial" is supported...

curl -sLf -o /dev/null 'https://deb.nodesource.com/node_12.x/dists/xenial/Release'

## Adding the NodeSource signing key to your keyring...

curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | gpg --dearmor | tee /usr/share/keyrings/nodesource.gpg >/dev/null

## Creating apt sources list file for the NodeSource Node.js 12.x repo...

echo 'deb [signed-by=/usr/share/keyrings/nodesource.gpg] https://deb.nodesource.com/node_12.x xenial main' > /etc/apt/sources.list.d/nodesource.list
echo 'deb-src [signed-by=/usr/share/keyrings/nodesource.gpg] https://deb.nodesource.com/node_12.x xenial main' >> /etc/apt/sources.list.d/nodesource.list
apt-get -y install nodejs
apt-get -y install npm
