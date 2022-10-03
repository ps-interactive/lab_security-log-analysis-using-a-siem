#!/bin/bash

sudo docker exec -it -u 0 ir-logstash bash -c 'http_proxy="http://tstark:pssecrocks@172.31.245.222:8888" apt-get install -y nano'
sudo docker exec -it -u 0 ir-logstash bash -c 'chown logstash:root /usr/share/logstash/pipeline/logstash.conf'
sudo docker exec -it -u 0 ir-logstash bash -c 'chown logstash:root /usr/share/logstash/auth.log'
