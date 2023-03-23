# Lab space for Rust
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM alpine:latest

COPY lab_spaces/rust /usr/src/

RUN apk update && apk add --no-cache \
    make \
    git \
    curl \
    nano \ 
    vim

WORKDIR /usr/src/

RUN cargo run

RUN rm -rf target