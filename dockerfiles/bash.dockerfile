# Lab space for Bash
# A set of docker containers to experiment code
# Github: https://github.com/0x4248/lab_space
# Licence: GNU General Public License v3.0
# By: 0x4248

FROM alpine:latest

LABEL version="1.0.0" \
    name="lab_space_bash" \
    language="Bash" \
    description="A set of docker containers to experiment code" \
    github="https://github.com/0x4248/lab_space"

COPY configs/root /root

COPY configs/bin /bin
RUN chmod +x /bin/labspace_help

RUN rm -rf /etc/profile.d/*
COPY configs/profile.d /etc/profile.d
RUN sed -i '1s/^/echo "Welcome to Bash Lab Space!"/' /etc/profile.d/welcome.sh

COPY containers/bash /usr/src/

RUN apk update && apk add --no-cache \
    bash \
    make \
    git \
    curl \
    nano \ 
    vim

WORKDIR /usr/src/

RUN make

ENTRYPOINT ["bash"]