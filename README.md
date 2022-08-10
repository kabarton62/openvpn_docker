# openvpn_docker

## Install OpenVPN  
Start the OpenVPN server. The directory /openvpn contains a Dockerfile and bash script openvpn.sh. Start the OpenVPN server by executing the bash script. The script will build the OpenVPN image then start a container. 

A client configuration file (client.ovpn) will be created and downloaded in the process. Client.ovpn is needed to connect to the server. 
```
sudo bash openvpn.sh
```
