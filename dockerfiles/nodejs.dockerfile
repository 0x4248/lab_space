# Lab space for Nodejs
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM alpine:latest

LABEL version="1.0.0" \
    name="lab_space_nodejs" \
    language="nodejs" \
    description="A set of docker containers to experiment code" \
    github="https://github.com/awesomelewis2007/lab_space"

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