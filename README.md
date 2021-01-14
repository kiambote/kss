# kss
A RTMP server for live streaming content with hls. 

### Goal
Create a nginx rtmp server on top of docker to receive income data and make available to https server. Configure https with let's encrypt. Run on top of docker and the content is mouted to the folder on the machine /mmt

### Requirements
1 . A domain name\
2 . A machine with docker installed

### Streamer
The Streamer is the entity that is sending the content to the RTMP server.\
Path - rtmp://server.com/app/<streamer_key>

### Consumer
Consumer is the entity that is watching or listening to the content.\
Path - http://server.com/show/<streamer_key>.m3u8

### How to run
1. Edit compose.yml to provide the right domain name
2. Edit domain name and email in setup.sh 
3. Run chmod +x setup.sh
4. Run sudo ./setup.sh
