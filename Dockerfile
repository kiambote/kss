FROM ubuntu:latest

ENV SERVERNAME localhost

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx nginx-plus-module-rtmp libnginx-mod-rtmp certbot python3-certbot-nginx
RUN cd /etc/nginx

COPY nginx.conf .

RUN DEBIAN_FRONTEND=noninteractive sudo certbot --nginx -d {SERVERNAME}
RUN mkdir /mnt

RUN sudo systemctl reload nginx

EXPOSE 80
EXPOSE 443