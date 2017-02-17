FROM sshdos:dockerfile
#设置继承SSHD镜像
MAINTAINER llsbdx from dockerpool.com
#设置环境变量，所有操作都是非交互式的
ENV DEBIAN——FRONTEND noninteractive
#设置时区
RUN echo "Asia/shanghai" >/etc/timezone && \
        dpkg-reconfigure -f noninteractive tzdata
#安装tomcat用户相关的
RUN apt-get update
RUN apt-get install -yq --no-install-recommends wget pwgen ca-certificates && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/*
#安装tomcat环境变量
ENV CATALINA_HOME /tomcat
ENV JAVA_HOME /jdk
#复制tomcat和jdk
ADD tomcat-7 /tomcat
ADD jdk /jdk

ADD create_tomcat_admin_user.sh /create_tomcat_admin_user.sh
ADD run.sh /run.sh

