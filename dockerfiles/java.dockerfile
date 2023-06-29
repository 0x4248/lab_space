# Lab space for Java
# A set of docker containers to experiment code
# Github: https://github.com/lewisevans2007/lab_space
# Licence: GNU General Public License v3.0
# By: Lewis Evans

FROM alpine:latest

LABEL version="1.0.0" \
    name="lab_space_java" \
    language="Java" \
    description="A set of docker containers to experiment code" \
    github="https://github.com/lewisevans2007/lab_space"

COPY configs/root /root

COPY configs/bin /bin
RUN chmod +x /bin/labspace_help

RUN rm -rf /etc/profile.d/*
COPY configs/profile.d /etc/profile.d
RUN sed -i '1s/^/echo "Welcome to Java Lab Space!"/' /etc/profile.d/welcome.sh

COPY containers/java /usr/src/

RUN apk update && apk add --no-cache \
    bash \
    make \
    git \
    curl \
    nano \
    openjdk8 \
    vim

WORKDIR /usr/src/

RUN make

ENTRYPOINT ["bash"]