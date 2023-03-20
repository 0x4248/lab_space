# Lab space for Rust
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM rust:latest

COPY lab_spaces/rust /usr/src/

RUN apt-get update && apt-get install -y \
    make \
    git \
    curl \
    nano \ 
    vim

WORKDIR /usr/src/

RUN cargo RUN

RUN rm -rf target