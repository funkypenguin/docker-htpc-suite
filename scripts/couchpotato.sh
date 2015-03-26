#!/bin/bash

docker run -d --name="couchpotato" -v `pwd`/couchpotato:/config --volumes-from datastore --link sabnzbd:sabnzbd --link plex:plex -v /etc/localtime:/etc/localtime:ro -e EDGE=1 -p 5050:5050 funkypenguin/couchpotato
