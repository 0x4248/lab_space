# Lab space for Python
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM alpine:latest

COPY lab_spaces/python /usr/src/

RUN apk update && apk add --no-cache \
    python3 \
    python3-pip \
    git \
    curl \
    make \
    nano \ 
    vim

WORKDIR /usr/src/

RUN make