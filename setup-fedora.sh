#!/bin/bash

if [ $(id -u) != "0" ]; then
	echo "must be run as root"
	exit 1
fi


yum install \
	vim \
	gcc gdb \
    glibc.i686 glibc-devel.i686 libgcc.i686 \
	nasm 
