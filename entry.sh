#!/bin/bash

set -e

echo $1

if [ "$1" = "parser" ]
then
	cd puppet/ && find -name '*.pp' | xargs -n 1 -t puppet parser validate
elif [ "$1" = "linter" ]
then
	cd puppet/ && puppet-lint modules/*
elif [ "$1" = "apply" ]
then
	puppet apply --modulepath=/root/puppet/modules/ /root/puppet/manifests/site.pp 
else 
	echo "Don't forget to mount the volume. Use 'parser' or 'linter'"
fi