#!/bin/sh

pip install nose pydot-ng pycuda cython requests elasticsearch

pip install h5py keras

pip install Lasagne lasagne_visualizer

pip install urllib

# Keras Visualization
cd /root
git clone https://github.com/raghakot/keras-vis.git
cd keras-vis
git checkout 0.4.1
python setup.py install

# libgpuarray for Keras/Theano backend
cd /root \
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
