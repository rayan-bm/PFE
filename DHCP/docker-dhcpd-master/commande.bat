docker build -t dhcp:tag .
docker run --name DHCP-SERVER -d dhcp:tag