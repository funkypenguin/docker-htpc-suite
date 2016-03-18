FROM phusion/baseimage:0.9.15
MAINTAINER funkypenguin <davidy@funkypenguin.co.nz>
#Based on the work of needo <needo@superhero.org>
#Based on the work of Eric Schultz <eric@startuperic.com>
#Thanks to Tim Haak <tim@haak.co.uk>
ENV DEBIAN_FRONTEND noninteractive

# Set correct environment variables
ENV HOME /root

# Use baseimage-docker's init system
CMD ["/sbin/my_init"]

# chfn workaround - Known issue within Dockers
RUN ln -s -f /bin/true /usr/bin/chfn

# This is a datastore
# So do nothing
