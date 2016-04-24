#!/bin/sh


for i in rsa dsa ecdsa ed25519
do
	f="/etc/ssh/ssh_host_${i}_key"
	if [ ! -f  ]; then
		ssh-keygen -t ${i} -N '' -f ${f}
	fi
done

/usr/sbin/sshd -D
