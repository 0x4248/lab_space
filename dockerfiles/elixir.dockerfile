# Lab space for Elixir
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM alpine:latest

LABEL version="1.0.0" \
    name="lab_space_elixir" \
    language="Elixir" \
    description="A set of docker containers to experiment code" \
    github="https://github.com/awesomelewis2007/lab_space"

COPY configs/root /root

COPY configs/bin /bin
RUN chmod +x /bin/labspace_help

RUN rm -rf /etc/profile.d/*
COPY configs/profile.d /etc/profile.d
RUN sed -i '1s/^/echo "Welcome to Elixir Lab Space!"/' /etc/profile.d/welcome.sh

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

ENTRYPOINT ["bash"]