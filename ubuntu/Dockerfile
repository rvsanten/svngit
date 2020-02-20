# Docker container for enabling easy migration from svn to git
FROM ubuntu:bionic

LABEL maintainer="richard@maasoft.com"

RUN apt-get update && apt-get install -y \
git \
git-svn \
ruby \
subversion \ 
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN gem install svn2git \
&& gem cleanup