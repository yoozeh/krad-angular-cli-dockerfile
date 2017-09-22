FROM node:latest
MAINTAINER Krad Zin <krad.zin@gmail.com>
LABEL authors="Krad Zin <krad.zin@gmail.com>" \
      maintainer="krad.zin@gmail.com" \
      version="0.1.1"

RUN mkdir -p /app
WORKDIR /app

RUN apt-get update && apt-get upgrade -y

RUN chown -R node:node /usr/local/lib/node_modules
RUN chown -R node:node /usr/local/bin

USER node
RUN npm install -g typescript@latest
RUN npm install -g @angular/cli@latest
RUN npm install -g yarn@latest
RUN ng set --global packageManager=yarn

USER root
RUN rm -rf /tmp/* /var/tmp/* *.tar.gz ~/.npm && npm cache clear --force

CMD ["bash"]
