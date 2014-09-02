#!/bin/bash
# Function : install latest MySQL
# CTime : 2014.09.01
# Author : Jason.Yu

yum -y install cmake ncurses-devel bison openssl openssl-devel gcc-c++
cd $1
cmake . -DCMAKE_INSTALL_PREFIX=$2 \
-DMYSQL_DATADIR=$3 \
-DSYSCONFIG=/etc \
-DWITH_INNOBASE_STORAGE_ENGINE=1 \
-DWITH_ARCHIVE_STORAGE_ENGINE=1 \
-DWITH_BLACKHOLE_STORAGE_ENGINE=1 \
-DWITH_READLINE=1 \
-DWITH_SSL=system \
-DWITH_ZLIB=system \
-DWITH_LIBWRAP=0 \
-DMYSQL_UNIX_ADDR=$2/mysql.sock \
-DDEFAULT_CHARSET=utf8 \
-DDEFAULT_COLLATION=utf8_general_ci
make
make install
