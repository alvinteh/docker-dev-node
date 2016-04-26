FROM alvinteh/docker-dev-base:latest

MAINTAINER Alvin Teh <i@alvinteh.me>

#Install node.js 5.11.0
ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 5.11.0

RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" \
  && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1 \
  && rm "node-v$NODE_VERSION-linux-x64.tar.xz"

#Install common node.js modules
npm install -g bower eslint grunt-cli gulp jshint pm2 webpack

#Expose ports
EXPOSE 80

#Define default command
CMD ["/bin/bash"]
