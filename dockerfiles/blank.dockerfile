# Blank lab space
# A set of docker containers to experiment code
# Github: https://github.com/lewisevans2007/lab_space
# Licence: GNU General Public License v3.0
# By: Lewis Evans

FROM alpine:3.18.5

LABEL version="1.0.0" \
    name="lab_space_blank" \
    language="None" \
    description="A set of docker containers to experiment code" \
    github="https://github.com/lewisevans2007/lab_space"

COPY configs/root /root

COPY configs/bin /bin
RUN chmod +x /bin/labspace_help

RUN rm -rf /etc/profile.d/*
COPY configs/profile.d /etc/profile.d
RUN sed -i '1s/^/echo "Welcome to Blank Lab Space!"/' /etc/profile.d/welcome.sh

COPY containers/blank /usr/src/

RUN apk update && apk add --no-cache \
    bash \
    make \
    git \
    curl \
    nano \ 
    vim

WORKDIR /usr/src/

ENTRYPOINT ["bash"]