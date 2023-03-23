# Lab space for bash
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM alpine:latest

COPY lab_spaces/bash /usr/src/

RUN apk update && apk add --no-cache \
    make \
    git \
    curl \
    nano \ 
    vim

WORKDIR /usr/src/

RUN make