FROM library/ubuntu:16.04

ADD ./build.sh /root/build.sh
ADD ./heathusf_v1.1.0.tar.gz /root/heathusf_v1.1.0.tar.gz

RUN /root/build.sh

VOLUME /data
WORKDIR /root
