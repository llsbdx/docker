#!/bin/bash
if [ ! -f /root/.ssh/id_rsa ]; then 
	ssh-keygen -t rsa -P '' -f /root/.ssh/id_rsa
	cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
        /hadoop/bin/hadoop namenode -format
fi
/hadoop/sbin/start-all.sh & /usr/sbin/sshd -D 
