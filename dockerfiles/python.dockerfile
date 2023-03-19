# Lab space for Python
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM python:latest

COPY lab_spaces/python /usr/src/

WORKDIR /usr/src/