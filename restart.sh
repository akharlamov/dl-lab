#!/bin/sh

sudo nvidia-docker kill dl-lab
sudo nvidia-docker rm dl-lab
sudo nvidia-docker run -v notebooks:/notebooks -p 8888:8888 --name dl-lab akharlamov/dl-lab:latest

