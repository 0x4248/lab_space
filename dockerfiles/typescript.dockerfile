# Lab space for Typescript
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM alpine:latest

LABEL version="1.0.0" \
    name="lab_space_typescript" \
    language="Typescript" \
    description="A set of docker containers to experiment code" \
    github="https://github.com/awesomelewis2007/lab_space"

COPY lab_spaces/typescript /usr/src/

RUN apk update && apk add --no-cache \
    nodejs \
    npm \
    git \
    curl \
    make \
    nano \ 
    vim

RUN npm install -g typescript

RUN npx tsc --init

WORKDIR /usr/src/