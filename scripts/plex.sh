#!/bin/bash

docker run -d --name="plex" -v `pwd`/plex:/config --volumes-from datastore -v /etc/localtime:/etc/localtime:ro \
-p 32400:32400 \
-p 32401:32401 \
-p 32469:32469 \
-p 8324:8324 \
-p 3005:3005 \
-p 1900:1900/udp \
-p 32410:32410/udp \
-p 32412:32412/udp \
-p 32413:32413/udp \
-p 32414:32414/udp \
funkypenguin/plex
