FROM node:boron
MAINTAINER Krad Zin <krad.zin@gmail.com>
LABEL authors="Krad Zin <krad.zin@gmail.com>" \
      maintainer="krad.zin@gmail.com" \
      version="0.1.0"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install -g yarn@latest \
  && npm install -g @angular/cli@latest \
  && ng set --global packageManager=yarn \
  && rm -rf /tmp/* /var/tmp/* *.tar.gz ~/.npm \
  && npm cache clear
