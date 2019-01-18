# Docker container for enabling easy migration from svn to git
FROM alpine:3.8

LABEL maintainer="richard@maasoft.com"

RUN apk add \
git \
git-svn \
ruby \
subversion \
ruby-rdoc
RUN gem install svn2git \
&& gem cleanup