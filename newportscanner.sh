#!/bin/bash

port=$2
echo "ip,port"
for i in {1..254};do
	ip="$1.$i"
	for h in $ip; do
		for p in $port; do
			timeout .1 bash -c "echo >/dev/tcp/$ip/$p" 2>/dev/null && echo "$ip $port"
		done
	done
done
