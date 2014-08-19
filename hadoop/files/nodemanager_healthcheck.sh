#!/bin/bash
# Function : check nodemanager health
# CTime : 2014.08.08
# Author : Jason.Yu

if [ `free -mlt |grep 'buffers/cache'|awk '{print $NF}'` -lt 512 ]
then
	echo "ERROR,free memory is lower than 512MB !"
fi
