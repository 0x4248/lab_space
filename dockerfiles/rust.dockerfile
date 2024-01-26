# Lab space for Rust
# A set of docker containers to experiment code
# Github: https://github.com/lewisevans2007/lab_space
# Licence: GNU General Public License v3.0
# By: Lewis Evans

FROM alpine:3.18.5

LABEL version="1.0.0" \
    name="lab_space_rust" \
    language="Rust" \
    description="A set of docker containers to experiment code" \
    github="https://github.com/lewisevans2007/lab_space"

COPY configs/root /root

COPY configs/bin /bin
RUN chmod +x /bin/labspace_help

RUN rm -rf /etc/profile.d/*
COPY configs/profile.d /etc/profile.d
RUN sed -i '1s/^/echo "Welcome to Rust Lab Space!"/' /etc/profile.d/welcome.sh

COPY containers/rust /usr/src/

RUN apk update && apk add --no-cache \
    gcc \
    bash \
    make \
    git \
    curl \
    nano \ 
    vim

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rustup.sh

RUN chmod +x rustup.sh

RUN ./rustup.sh -y

ENV PATH="/root/.cargo/bin:${PATH}"

WORKDIR /usr/src/

RUN cargo run

RUN rm -rf target

ENTRYPOINT ["bash"]