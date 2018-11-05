FROM ubuntu:18.04

RUN cd /tmp/ && \
  apt-get update && \
  apt-get install -y wget ssh && \
  wget http://apt.puppet.com/puppet6-release-bionic.deb && \
  dpkg -i puppet6-release-bionic.deb && \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y puppet-agent \
    pdk \
    ansible \
    python-boto3 \
    python-boto \
    python3-pip && \
  pip3 install pypuppetdb && \
  apt-get clean
