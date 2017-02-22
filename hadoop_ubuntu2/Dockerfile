FROM llsbdx/java:ubuntu

MAINTAINER llsbdx from dockerpool.com
#设置时区
RUN echo "Asia/shanghai" >/etc/timezone && \
        dpkg-reconfigure -f noninteractive tzdata
#安装hadoop
RUN apt-get install -yq --no-install-recommends rsync
#复制hadoop

ADD hadoop /hadoop
ADD hadoop_env /hadoop_env
ADD ssh_config /root/.ssh/config
ADD run.sh /run.sh

RUN chmod 755 /run.sh
RUN cat /hadoop_env >>/etc/profile
#open port
EXPOSE 22
EXPOSE 8088

#set start commond
CMD ["/run.sh"]

