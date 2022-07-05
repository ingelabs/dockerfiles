FROM ubuntu:18.04

RUN apt-get update && \
	apt-get install -y openssh-server locales

# generate a nice UTF-8 locale for our use
RUN locale-gen en_US.UTF-8 && update-locale LANG=en_US.UTF-8

# allow root login
RUN sed -ri 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# set a cheap, simple password for great convenience
RUN echo 'root:docker.io' | chpasswd

# let systemd know it's in a container
ENV container docker

RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# we can has SSH
EXPOSE 22

# pepare for takeoff
CMD ["/sbin/init"]
