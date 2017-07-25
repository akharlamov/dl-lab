FROM library/ubuntu:16.04

ADD entrypoint.sh /entrypoint.sh

WORKDIR /

RUN apt-get update \
	&& apt-get install -y python python-pip git \
	&& pip install --upgrade pip \
	&& pip install gevent Flask \
	&& git clone https://github.com/fchollet/hualos.git

EXPOSE 9000
ENTRYPOINT . /entrypoint.sh
