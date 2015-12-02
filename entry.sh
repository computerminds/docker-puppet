#!/bin/bash

set -e

echo $1
echo $2
echo $3
echo $4

if [ "$4" = "parser" ]
then
	cd $3 && find -name '*.pp' | xargs -n 1 -t puppet parser validate
elif [ "$4" = "linter" ]
then
	cd $3 && puppet-lint modules/*
elif [ "$4" = "ls" ]
then
	ls
	ls /root/puppet/*
else 
	echo "Don't forget to mount the volume. Use 'parser' or 'linter'"
fi