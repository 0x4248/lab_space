# Lab space for Python
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM alpine:latest

LABEL version="1.0.0" \
    name="lab_space_python" \
    language="Python" \
    description="A set of docker containers to experiment code" \
    github="https://github.com/awesomelewis2007/lab_space"

COPY containers/python /usr/src/

RUN apk update && apk add --no-cache \
    bash \
    python3 \
    py3-pip \
    git \
    curl \
    make \
    nano \ 
    vim

WORKDIR /usr/src/

RUN make