FROM ubuntu:trusty
MAINTAINER Katsuyuki Tateishi <kt@wheel.jp>

RUN apt-get update && \
    apt-get install -y \
    	openssh-server \
    	openssh-client \
    	netcat \
	curl \
	vim

ADD docker-entry.sh /

CMD ["/docker-entry.sh"]
