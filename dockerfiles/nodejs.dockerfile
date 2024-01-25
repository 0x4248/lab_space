# Lab space for Nodejs
# A set of docker containers to experiment code
# Github: https://github.com/lewisevans2007/lab_space
# Licence: GNU General Public License v3.0
# By: Lewis Evans

FROM alpine:3

LABEL version="1.0.0" \
    name="lab_space_nodejs" \
    language="nodejs" \
    description="A set of docker containers to experiment code" \
    github="https://github.com/lewisevans2007/lab_space"

COPY configs/root /root

COPY configs/bin /bin
RUN chmod +x /bin/labspace_help

RUN rm -rf /etc/profile.d/*
COPY configs/profile.d /etc/profile.d
RUN sed -i '1s/^/echo "Welcome to Nodejs Lab Space!"/' /etc/profile.d/welcome.sh

COPY containers/nodejs /usr/src/

RUN apk update && apk add --no-cache \
    bash \
    nodejs \
    npm \
    git \
    curl \
    make \
    nano \ 
    vim

WORKDIR /usr/src/

RUN npm start

ENTRYPOINT ["bash"]