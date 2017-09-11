FROM node:6.11
WORKDIR /
RUN git clone -b https://github.com/knagware9/marbles
WORKDIR /marbles
RUN rm -rf node_modules && npm install && npm install -g gulp
