FROM apache:ubuntu

MAINTAINER llsbdx from dockerpool.com

ADD run.sh /run.sh
RUN chmod 755 /*.sh
COPY sample/ /app
WORKDIR /app
CMD ["/run.sh"]
