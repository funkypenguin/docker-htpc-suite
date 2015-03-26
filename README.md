# docker-htpc-suite
A set of automated / manual scripts to control an integrated set of "dockerized" HTPC suite of tools, including

* [sabnzbd][1]
* [couchpotato][2]
* [nzbdrone][3]
* [plex][4]

[1]: https://github.com/funkypenguin/sabnzbd
[2]: https://github.com/funkypenguin/couchpotato
[3]: https://github.com/funkypenguin/nzbdrone
[4]: https://github.com/funkypenguin/plex

# Quick Start (using docker-compose)

On a docker-enabled, host, clone the repo

    git clone https://github.com/funkypenguin/docker-htpc-suite.git

Then change into the working directory:

    cd docker-htpc-suite

Edit docker-compose.yml, and change the media location folder on line 4.

Add a local user to the base docker host named "htpc" with UID 4242 (the meaning of 2 lives). Make sure this user has all the necessary access to the media folder location.

Start up the docker containers by running ```docker-compose up -d```

This will do the following:

1. Establish a data container for common data access to a path on your filesystem (/srv/data by default), belonging to the user "htpc" with UID 4242
2. Start each app container, creating a subdirectory in the current working directory for its persistent config (database, settings, etc), and linking /data to the data container

You can now connect to your suite on the following URLs:

* sabnzbd : http://localhost:8080
* couchpotato : http://localhost:5050
* nzbdrone : http://localhost:8989
* plex : http://localhost:32400/web/

# Manual Container Management (without docker-compose)

For greater flexibility, you can also manually start each container. The scripts/ folder includes startup scripts for each container, which are intended to be executed from the main repo directory.

For example:

    ./scripts/datastore.sh
    ./scripts/sabnzbd.sh
    ./scripts/plex.sh
    ./scripts/couchpotato.sh
    ./scripts/nzbdrone.sh

# Planned Enhancements

* Integration of container for rtorrent / rutorrent
* Integration of container to run cron scripts against tools in suite
* Integration of container for nginx configured to proxy each tool, so that only a single port needs to be exposed via docker for management
