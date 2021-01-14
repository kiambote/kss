FROM ubuntu:latest

ENV SERVERNAME localhost 

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx libnginx-mod-rtmp certbot python3-certbot-nginx
RUN cd /etc/nginx

COPY nginx.conf .

RUN DEBIAN_FRONTEND=noninteractive certbot --nginx -d {SERVERNAME}
RUN mkdir /mnt

RUN systemctl reload nginx

EXPOSE 80
EXPOSE 443 