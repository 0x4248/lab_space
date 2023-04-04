# Lab space for PHP
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM alpine:latest

LABEL version="1.0.0" \
    name="lab_space_php" \
    language="PHP" \
    description="A set of docker containers to experiment code" \
    github="https://github.com/awesomelewis2007/lab_space"

COPY configs/root /root

RUN rm -rf /etc/profile.d/*
COPY configs/profile.d /etc/profile.d
RUN sed -i '1s/^/echo "Welcome to Bash Lab Space!"/' /etc/profile.d/welcome.sh

COPY containers/php /usr/src/

RUN apk update && apk add --no-cache \
    bash \
    make \
    git \
    curl \
    nano \ 
    php \
    vim

WORKDIR /usr/src/

RUN make

ENTRYPOINT [ "bash"]