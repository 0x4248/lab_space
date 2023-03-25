# Lab space for Bash
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM alpine:latest

LABEL version="1.0.0" \
    name="lab_space_bash" \
    language="Bash" \
    description="A set of docker containers to experiment code" \
    github="https://github.com/awesomelewis2007/lab_space"

COPY lab_spaces/bash /usr/src/

RUN apk update && apk add --no-cache \
    bash \
    make \
    git \
    curl \
    nano \ 
    vim

WORKDIR /usr/src/

RUN make