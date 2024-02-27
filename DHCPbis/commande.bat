docker build -t dhcp:tag .
docker network create --subnet=10.254.239.0/27 mydhcpnet
docker run --name DHCP-SERVER --net=mydhcpnet --ip=10.254.239.2 -d dhcp:tag
docker build -t dns:tag D:\Users\Nathan\Desktop\ProjetDOCKER\DNS
docker run --name DNS-SERVER --net=mydhcpnet --ip=10.254.239.6 -d dns:tag
docker run --dns=10.254.239.6 -it --rm --privileged --net mydhcpnet alpine /bin/sh
pause