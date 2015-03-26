#!/bin/bash

# Start a base image to use as a data container
docker run -d --name="datastore" -v /srv/data/:/data -v /etc/localtime:/etc/localtime:ro phusion/baseimage:0.9.16
