# kss
A RTMP server for live streaming content with hls. 

### Goal
Create a nginx rtmp server on top of docker to receive in come data and make available to http and https location
Configure https with let's encrypt\
Run on top of docker with a volume to the location /mmt

### Streamer
Syntax - rtmp://server.com/app/<streamer_key>

### Consumer
Path - http://server.com/show/<streamer_key>.m3u8
