FROM ubuntu:22.04

# Update and install necessary packages
RUN apt update && \
    apt upgrade -y

RUN

WORKDIR /root/project
ADD ./run.sh /root/project

ENTRYPOINT [ "/bin/bash" ]