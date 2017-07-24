#!/bin/sh

apt-get update

apt-get install -y --no-install-recommends g++ autoconf automake cmake git ca-certificates make imagemagick

mkdir /data

cd /root 

git clone https://github.com/thorfdbg/libjpeg.git \
        && cd libjpeg \
        && ./configure --bindir=/usr/bin \
        && make final \
        && make install \
        && mv /root/bin/wavelet/jpeg /usr/bin

pwd

#apt remove -y g++ autoconf automake cmake make

