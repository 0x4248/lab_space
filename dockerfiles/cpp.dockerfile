# Lab space for C++
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM alpine:latest

LABEL version="1.0.0" \
    name="lab_space_cpp" \
    language="C++" \
    description="A set of docker containers to experiment code" \
    github="https://github.com/awesomelewis2007/lab_space"

COPY lab_spaces/cpp /usr/src/

RUN apk update && apk add --no-cache \
    bash \
    gcc \
    g++ \
    libc-dev \
    make \
    git \
    curl \
    nano \ 
    vim

WORKDIR /usr/src/

RUN make

RUN make clean