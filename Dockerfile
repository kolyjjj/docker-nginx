FROM debian:jessie
MAINTAINER koly li <kolyjjj@foxmail.com>
ADD ./nginx_signing.key /tmp/
RUN chmod 755 /tmp/nginx_signing.key
RUN apt-key add /tmp/nginx_signing.key
RUN echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y curl vim nginx && apt-get clean && rm -rf /var/lib/apt/lists/*
