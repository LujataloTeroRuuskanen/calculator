FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Helsinki

RUN apt-get update -y && apt upgrade -y
RUN apt-get install -y nodejs npm

WORKDIR /usr
COPY . /usr/
WORKDIR /usr/calculator

RUN npm install
CMD ["npm", "start"]

