#!/bin/bash
# Function : install latest nginx 
# CTime : 2014.08.06
# Author : Jason.Yu

yum -y install gcc openssl-devel pcre-devel zlib-devel
cd $1
./configure \
--prefix=$2 \
--sbin-path=/usr/sbin/nginx \
--conf-path=$2/etc/nginx.conf \
--error-log-path=$2/logs/error.log \
--http-log-path=$2/logs/access.log \
--pid-path=/var/run/nginx/nginx.pid  \
--lock-path=/var/lock/nginx.lock \
--user=nginx \
--group=nginx \
--with-http_ssl_module \
--with-http_flv_module \
--with-http_stub_status_module \
--with-http_gzip_static_module \
--http-client-body-temp-path=/var/tmp/nginx/client/ \
--http-proxy-temp-path=/var/tmp/nginx/proxy/ \
--http-fastcgi-temp-path=/var/tmp/nginx/fcgi/ \
--http-uwsgi-temp-path=/var/tmp/nginx/uwsgi \
--http-scgi-temp-path=/var/tmp/nginx/scgi \
--with-pcre
make && make install
