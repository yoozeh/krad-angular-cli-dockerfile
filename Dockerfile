FROM node:latest
MAINTAINER Krad Zin <krad.zin@gmail.com>
LABEL authors="Krad Zin <krad.zin@gmail.com>" \
      maintainer="krad.zin@gmail.com" \
      version="0.1.1"

RUN mkdir -p /app
WORKDIR /app

RUN apt update && apt upgrade -y
RUN npm update -g
RUN npm install -g yarn@latest
RUN npm install -g typescriptn@latest
RUN npm install -g @angular/cli@latest
RUN ng set --global packageManager=yarn
RUN rm -rf /tmp/* /var/tmp/* *.tar.gz ~/.npm && npm cache clear

CMD ["bash"]
