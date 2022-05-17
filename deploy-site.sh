#!/bin/sh

vagrant ssh server-ubuntu << EOF
sudo docker run --name web-app-test -p 8080:8080 -d hsongwa/web-app-test:latest

EOF

