# Lab space for Assembly
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM alpine:latest

LABEL version="1.0.0" \
    name="lab_space_fortran" \
    language="Fortran" \
    description="A set of docker containers to experiment code" \
    github="https://github.com/awesomelewis2007/lab_space"

COPY configs/root /root

RUN rm -rf /etc/profile.d/*
COPY configs/profile.d /etc/profile.d
RUN sed -i '1s/^/echo "Welcome to Fortran Lab Space!"/' /etc/profile.d/welcome.sh

COPY containers/fortran /usr/src/

RUN apk update && apk add --no-cache \
    bash \
    make \
    git \
    curl \
    nano \ 
    gfortran \
    build-base \
    vim

WORKDIR /usr/src/

RUN make

ENTRYPOINT [ "bash"]