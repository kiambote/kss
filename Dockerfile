FROM ubuntu:latest

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx libnginx-mod-rtmp certbot python3-certbot-nginx

WORKDIR /etc/nginx
RUN rm -v nginx.conf
COPY nginx.conf .

EXPOSE 80
EXPOSE 443