# Lab space for C
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM gcc:latest

COPY lab_spaces/c /usr/src/

RUN apt-get update && apt-get install -y \
    make \
    git \
    curl \
    nano \ 
    vim

WORKDIR /usr/src/

RUN make

RUN make clean