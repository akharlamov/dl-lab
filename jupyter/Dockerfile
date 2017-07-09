FROM tensorflow/tensorflow:latest-gpu

RUN apt-get update

# Theano requires C++ compiler to produce effective code
RUN apt-get install -y --no-install-recommends g++ libopenblas-dev cmake git

RUN pip install nose pydot-ng pycuda cython

RUN pip install keras Lasagne lasagne_visualizer 
RUN pip install --upgrade https://github.com/Theano/Theano/archive/master.zip

RUN echo "Building libgpuarray"
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
