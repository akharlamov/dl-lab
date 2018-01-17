FROM tensorflow/tensorflow:latest-gpu

ADD build.sh /root/build.sh

# Theano requires C++ compiler to produce effective code
RUN apt-get update && apt-get install -y --no-install-recommends g++ libopenblas-dev cmake git \
	libgdcm2.6 libgdcm-cil libgdcm-tools gdcm-doc python-gdcm \
	libvtkgdcm2.6 libvtkgdcm-cil libvtkgdcm-tools libvtkgdcm2-dev python-vtkgdcm


RUN . /root/build.sh

VOLUME /notebooks
WORKDIR /notebooks
