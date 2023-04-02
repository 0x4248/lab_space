# Lab space for Elixir
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM alpine:latest

LABEL version="1.0.0" \
    name="lab_space_elixir" \
    language="Elixir" \
    description="A set of docker containers to experiment code" \
    github="https://github.com/awesomelewis2007/lab_space"

COPY containers/elixir /usr/src/

RUN apk update && apk add --no-cache \
    bash \
    npm \
    git \
    curl \
    make \
    nano \ 
    vim \
    elixir

WORKDIR /usr/src/

RUN make