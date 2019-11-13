#!/bin/bash

mac=$(printf '%s\n' $1 | awk '{ print toupper($0) }')

function getSwitchInfo () {
secret=<mysecret>
for switch in 253 252 43 44 245 49 50 244 251 45 46 47 48
	do
	printf '\n'
	echo -e "\e[31m192.168.88.$switch\e[0m"
sshpass -p $secret ssh -o "StrictHostKeyChecking=no" admin@192.168.88.$switch << EOF
enable
$secret
show mac-addr-table | include $1
EOF
done
			}

getSwitchInfo $mac 1> search.out 2>/dev/null
egrep "192.168|Learned" search.out | sed '/192.168/{x;p;x;}'
rm -r search.out
