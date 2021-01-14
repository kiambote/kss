# kss
A RTMP server for live streaming content with hls. 

### Goal
Create a nginx rtmp server on top of docker to receive income data and make available to https server. Configure https with let's encrypt. Run on top of docker and the content is mouted to the folder on the machine /mmt

### Requirements
1 . A domain name\
2 . A machine with docker installed

### Streamer
The Streamer is the entity that is sending the content to the RTMP server.\
Syntax - rtmp://server.com/app/<streamer_key>

### Consumer
Consumer is the entity that is watching or listening to the content.\
Path - http://server.com/show/<streamer_key>.m3u8

### How to run
docker run -d -p 80:80 -p 443:443 kiambotehub/kss:1.0.0 -e SERVERNAME=content.kiambotehub.net
