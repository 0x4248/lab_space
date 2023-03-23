# Lab space for Nodejs
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM alpine:latest

COPY lab_spaces/nodejs /usr/src/

RUN apk update && apk add --no-cache \
    nodejs \
    npm \
    git \
    curl \
    make \
    nano \ 
    vim

WORKDIR /usr/src/

RUN npm start