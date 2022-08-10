#!/bin/bash
# Build the openvpn image
docker build .

# Get the image ID
openvpnImage=$(docker images|grep openvpn|awk '{print $3}')

# Start the openvpn container
docker run -d --name openvpn --cap-add=NET_ADMIN \
--hostname openvpn -p 1194:1194/udp -p 8080:8080 \
-e HOST_ADDR=$(curl -s https://api.ipify.org) \
$openvpnImage

# Download the first client.ovpn configuration file
wget http://localhost:8080 -O client.ovpn
