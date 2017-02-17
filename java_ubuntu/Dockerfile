#set parent images
FROM sshd:dockerfile
#set info
MAINTAINER from 170239553.qq.com by llsbdx 
#set commond
RUN echo "export JAVA_HOME=/jdk" >>/etc/profile
RUN echo "export PATH=/jdk/bin:$PATH" >>/etc/profile
RUN echo "export CLASSPATH=/jdk/lib/dt.jar:$JAVA_HOME/lib/tools.jar" >>/etc/profile
RUN echo "$source /etc/profile"
#add promissed
ADD jdk /jdk
ADD authorized_keys /root/.ssh/authorized_keys
ADD run.sh /run.sh
RUN chmod 755 /run.sh

#set start commond
CMD ["/run.sh"]
