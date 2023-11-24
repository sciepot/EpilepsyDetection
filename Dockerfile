FROM ubuntu:22.04

# Update and install necessary packages
RUN apt update && \
    apt upgrade -y && \
    apt install -y vim git python3 pip

RUN pip install tensorflow && \
    pip install --upgrade tensorflow-hub && \
    pip install -q git+https://github.com/tensorflow/docs && \
    pip install ipython && \
    pip install -q opencv-python && \
    apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

WORKDIR /root/project
ADD ./run.sh /root/project

ENTRYPOINT [ "/bin/bash" ]