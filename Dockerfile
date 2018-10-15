FROM ubuntu:18.04

RUN cd /tmp/ && \
  apt-get update && \
  apt-get install -y wget && \
  wget http://apt.puppet.com/puppet6-release-bionic.deb && \
  dpkg -i puppet6-release-bionic.deb && \
  apt-get update && \
  apt-get install -y puppet-agent && \
  apt-get install -y pdk && \
  apt-get clean
