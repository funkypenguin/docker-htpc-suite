#!/bin/bash

docker run -d --name="nzbdrone" -v `pwd`/nzbdrone:/config --volumes-from datastore --link sabnzbd:sabnzbd --link plex:plex -v /etc/localtime:/etc/localtime:ro -p 8989:8989 funkypenguin/nzbdrone
