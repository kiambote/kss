# kss
A RTMP server for live streaming content with hls. 

### Goal
Create a nginx rtmp server on top of docker to https server to server hls files.

### Requirements
1 . A domain name\
2 . A machine with docker installed

### Consumer
Consumer is the entity that is watching or listening to the content.\
Path - http://example.org/show/<streamer_key>/index.m3u8

### How to run
1. Edit compose.yml to provide the right domain name and security certificates
2. compose up
