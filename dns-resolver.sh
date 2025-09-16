#!/bin/bash

server=$2
echo "dns thingy"

for i in {1..254}; do
	target=$1.$i
	for out in $target;do
		nslookup $out $server | grep "="
	done
done
