FROM tensorflow/tensorflow:latest-gpu

# Theano requires C++ compiler to produce effective code
RUN apt-get update && apt-get install -y --no-install-recommends g++ libopenblas-dev cmake git \
	libgdcm2.6 libgdcm-cil libgdcm-tools gdcm-doc python-gdcm \
	libvtkgdcm2.6 libvtkgdcm-cil libvtkgdcm-tools libvtkgdcm2-dev python-vtkgdcm

RUN pip install nose pydot-ng pycuda cython \
	&& pip install keras Lasagne lasagne_visualizer \
	&& pip install --upgrade https://github.com/Theano/Theano/archive/master.zip

RUN cd /root \
	&& git clone https://github.com/Theano/libgpuarray.git \
	&& cd libgpuarray \
	&& mkdir Build \
	&& cd Build \
	&& cmake .. -DCMAKE_BUILD_TYPE=Release \
	&& make \
	&& make install \
	&& cd .. \
	&& python setup.py build \
	&& python setup.py install \
	&& ldconfig

VOLUME /notebooks
WORKDIR /notebooks
