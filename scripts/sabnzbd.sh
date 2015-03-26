#!/bin/bash

docker run -d --name="sabnzbd" -v `pwd`/sabnzbd:/config --volumes-from datastore -v /etc/localtime:/etc/localtime:ro -e EDGE=1 -p 8082:8080 funkypenguin/sabnzbd
