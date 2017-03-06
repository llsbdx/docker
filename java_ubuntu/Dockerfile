#set parent images
#FROM sshd:dockerfile
FROM llsbdx/java:ubuntu
#set info
MAINTAINER from 170239553.qq.com by llsbdx 
#set commond
ADD authorized_keys /root/.ssh/authorized_keys
ADD run.sh /run.sh
RUN chmod 755 /run.sh

#set start commond
CMD ["/run.sh"]
