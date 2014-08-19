#!/bin/bash
# Function : install latest PHP
# CTime : 2014.08.06
# Author : Jason.Yu

yum -y install bzip2-devel libmcrypt-devel mhash-devel libxml2 libxml2-devel openssl openssl-devel
cd $1
./configure \
--prefix=$2 \
--with-mysql=mysqlnd \
--with-pdo-mysql=mysqlnd \
--with-mysqli=mysqlnd \
--with-openssl \
--enable-mbstring \
--with-freetype-dir \
--with-jpeg-dir \
--with-png-dir \
--with-zlib \
--with-libxml-dir=/usr \
--enable-xml \
--enable-sockets \
--enable-fpm \
--enable-zip \
--enable-soap \
--with-mcrypt \
--with-config-file-path=/etc \
--with-config-file-scan-dir=/etc/php.d \
--with-bz2
make && make install
