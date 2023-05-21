# Lab space for Lua
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space
# Licence: GNU General Public License v3.0
# By: Lewis Evans

FROM alpine:latest

LABEL version="1.0.0" \
    name="lab_space_lua" \
    language="Lua" \
    description="A set of docker containers to experiment code" \
    github="https://github.com/awesomelewis2007/lab_space"

COPY configs/root /root

COPY configs/bin /bin
RUN chmod +x /bin/labspace_help

RUN rm -rf /etc/profile.d/*
COPY configs/profile.d /etc/profile.d
RUN sed -i '1s/^/echo "Welcome to Lua Lab Space!"/' /etc/profile.d/welcome.sh

COPY containers/lua /usr/src/

RUN apk update && apk add --no-cache \
    bash \
    make \
    git \
    curl \
    nano \ 
    lua \
    vim

WORKDIR /usr/src/

RUN make

ENTRYPOINT ["bash"]