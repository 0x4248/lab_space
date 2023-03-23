# Lab space for C
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM alpine:latest

COPY lab_spaces/c /usr/src/

RUN apk update && apk add --no-cache \
    gcc \
    libc-dev \
    make \
    git \
    curl \
    nano \ 
    vim

WORKDIR /usr/src/

RUN make

RUN make clean