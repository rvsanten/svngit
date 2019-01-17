# Docker container for enabling easy migration from svn to git
FROM ubuntu:18.04

LABEL maintainer="richard@maasoft.com"

ENV http_proxy "http://emea.zscaler.philips.com:9480"
ENV https_proxy "http://emea.zscaler.philips.com:9480"

RUN apt-get update && apt-get install -y \
git \
git-svn \
ruby \
subversion \ 
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
##RUN gem update \
RUN gem install svn2git \
&& gem cleanup
