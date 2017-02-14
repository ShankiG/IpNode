#!/bin/bash
echo "192.168.59.219 22
192.168.59.219 80" | \
while read host port; do
	r=$(bash -c 'exec 3<> /dev/tcp/'$host'/'$port';echo $?' 2>/dev/null)
	if [ "$r" = "0" ]; then
		echo $host $port Port is open
	else
		echo $host $port Port is closed
	
fi
done

