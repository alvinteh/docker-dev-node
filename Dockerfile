FROM alvinteh/docker-dev-base:latest

MAINTAINER alvinteh

#Install node.js 5.11.0
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash && \
  source ~/.bashrc && \
  nvm install 5.11.0 && \
  nvm use 5.11.0 && \

#Install common node.js modules
npm install -g bower eslint grunt-cli gulp jshint pm2 webpack

#Expose ports
EXPOSE 80

#Define default command
CMD ["/bin/bash"]
