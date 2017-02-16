#set parent images
FROM ubuntu:latest
#set info
MAINTAINER from www.wockerpool.com by waitfish
#set commond
RUN echo "deb http://mirrors.163.com/ubuntu/ precise main restricted" >etc/apt/sources.list.d/163.list
RUN echo "deb-src http://mirrors.163.com/ubuntu/ precise main restricted" >>etc/apt/sources.list.d/163.list
RUN echo "deb http://mirrors.163.com/ubuntu/ precise-updates main restricted" >>etc/apt/sources.list.d/163.list
RUN echo "deb-src http://mirrors.163.com/ubuntu/ precise-updates main restricted" >>etc/apt/sources.list.d/163.list
RUN echo "deb http://mirrors.163.com/ubuntu/ precise universe" >>etc/apt/sources.list.d/163.list
RUN echo "deb-src http://mirrors.163.com/ubuntu/ precise universe" >>etc/apt/sources.list.d/163.list
RUN echo "deb http://mirrors.163.com/ubuntu/ precise-updates universe" >>etc/apt/sources.list.d/163.list
RUN echo "deb-src http://mirrors.163.com/ubuntu/ precise-updates universe" >>etc/apt/sources.list.d/163.list
RUN echo "deb http://mirrors.163.com/ubuntu/ precise multiverse" >>etc/apt/sources.list.d/163.list
RUN echo "deb-src http://mirrors.163.com/ubuntu/ precise multiverse" >>etc/apt/sources.list.d/163.list
RUN echo "deb http://mirrors.163.com/ubuntu/ precise-updates multiverse" >>etc/apt/sources.list.d/163.list
RUN echo "deb-src http://mirrors.163.com/ubuntu/ precise-updates multiverse" >>etc/apt/sources.list.d/163.list
RUN echo "deb http://mirrors.163.com/ubuntu/ precise-backports main restricted universe multiverse" >>etc/apt/sources.list.d/163.list
RUN echo "deb-src http://mirrors.163.com/ubuntu/ precise-backports main restricted universe" >>etc/apt/sources.list.d/163.list multiverse
RUN echo "deb http://mirrors.163.com/ubuntu/ precise-security main restricted" >>etc/apt/sources.list.d/163.list
RUN echo "deb-src http://mirrors.163.com/ubuntu/ precise-security main restricted" >>etc/apt/sources.list.d/163.list
RUN echo "deb http://mirrors.163.com/ubuntu/ precise-security universe" >>etc/apt/sources.list.d/163.list
RUN echo "deb-src http://mirrors.163.com/ubuntu/ precise-security universe" >>etc/apt/sources.list.d/163.list
RUN echo "deb http://mirrors.163.com/ubuntu/ precise-security multiverse" >>etc/apt/sources.list.d/163.list
RUN echo "deb-src http://mirrors.163.com/ubuntu/ precise-security multiverse" >>etc/apt/sources.list.d/163.list
RUN echo "deb http://extras.ubuntu.com/ubuntu precise main" >>etc/apt/sources.list.d/163.list
RUN echo "deb-src http://extras.ubuntu.com/ubuntu precise main" >>etc/apt/sources.list.d/163.list
RUN apt-get update

#install openssh-server
RUN apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd
RUN mkdir -p /root/.ssh
RUN sed -ri 's/session required pam_loginuid.so/#session required pam_loginuid.so/g' /etc/pam.d/sshd

#add promissed
ADD authorized_keys /root/.ssh/authorized_keys
ADD run.sh /run.sh
RUN chmod 755 /run.sh

#open port
EXPOSE 22

#set start commond
CMD ["/run.sh"]
