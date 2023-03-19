# Lab space for Nodejs
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM ubuntu:latest

COPY lab_spaces/nodejs /usr/src/

RUN apt-get update && apt-get install -y 
RUN apt-get install -y nodejs npm

WORKDIR /usr/src/