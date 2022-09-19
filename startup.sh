#!/bin/bash
sudo docker network create ps-elastic
sudo http.proxy="http://tstark:pssecrocks@172.31.245.222:8888" docker build -f /lab_security-log-analysis-using-a-siem/dockerfile_elastic -t "ps-elastic" .
sudo http.proxy="http://tstark:pssecrocks@172.31.245.222:8888" docker build -f /lab_security-log-analysis-using-a-siem/dockerfile_kibana -t "ps-kibana" .
sudo docker run -d --name ps-elastic --net ps-elastic -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" ps-elastic
sudo docker run -d --name ps-kibana --net ps-elastic -p 5601:5601 -e "ELASTICSEARCH_HOSTS=http://ps-elastic:9200" ps-kibana
