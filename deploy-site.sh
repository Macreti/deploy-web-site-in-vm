#!/bin/sh

vagrant ssh server-ubuntu << EOF
#sudo docker run --name web-app-test -p 8080:8080 -d hsongwa/web-app-test:latest
sudo docker run --name name_of_container -p expose_port:port_container -d username/name_of_your_image:tag-name

EOF

