FROM centos:6.8
MAINTAINER Takamatsu Makoto <tkmtmkt@gmail.com>

ADD assets /assets
RUN /assets/setup.sh

EXPOSE 22

ENTRYPOINT ["/usr/sbin/sshd", "-D"]
