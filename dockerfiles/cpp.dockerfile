# Lab space for C++
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM gcc:latest

COPY lab_spaces/cpp /usr/src/

RUN apt-get update && apt-get install -y \
    git \
    curl \
    nano \ 
    vim

WORKDIR /usr/src/