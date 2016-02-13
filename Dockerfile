FROM ubuntu:latest
MAINTAINER "Sam Phomsopha" <samphomsopha@gmail.com>

RUN apt-get update -y && apt-get install -y \
    php5-fpm \
    php5-curl \
    php5-gd \
    php5-imagick \
	php5-json \
	php5-mcrypt \
	php5-memcache \
    php5-memcached \
    php5-mongo \
    php5-mssql \
    php5-mysqlnd \
    php5-pgsql \
    php5-redis \
    php5-sqlite \
    php5-xdebug \
    php5-xmlrpc \
    php5-xcache

# Configure using provided util

RUN mkdir -p /data
VOLUME ["/data"]

EXPOSE 9000

ENTRYPOINT ["/usr/sbin/php5-fpm", "-F"]