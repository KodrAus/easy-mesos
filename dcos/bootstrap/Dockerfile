FROM ubuntu:16.04

RUN ln -s /bin/mkdir /usr/bin/mkdir && \
	ln -s /bin/ln /usr/bin/ln && \
	ln -s /bin/tar /usr/bin/tar && \
	ln -s /usr/sbin/useradd /usr/bin/useradd && \
	apt-get update && \
	apt-get install -y apt-transport-https ca-certificates unzip ipset selinux-utils dirmngr

RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

COPY docker.list /etc/apt/sources.list.d/docker.list

RUN apt-get update && apt-get install -y docker-engine

COPY ./volume /var/bootstrap

CMD bash /var/bootstrap/dcos_generate_config.sh --web