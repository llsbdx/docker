FROM sshdos:dockerfile
MAINTAINER llsbdx from dockerpool.cod

RUN \
	apt-get install -y nginx && \
	echo "\ndaemon off;" >>/etc/nginx/nginx.conf && \
	chown -R www-data:www-data /var/lib/nginx
RUN echo "Asia/Shanghai" >/etc/timezone && \ 
	dpkg-reconfigure -f noninteractive tzdata

ADD run.sh /run.sh
RUN chmod 755 /*.sh

#define load dir of data
VOLUME ["/etc/nginx/sites-enabled","/etc/nginx/certs","/etc/nginx/conf.d","/var/log/nginx"]

WORKDIR /etc/nginx
CMD ["/run.sh"]
EXPOSE 80
EXPOSE 443
