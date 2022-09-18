#!/bin/bash
sudo docker network create ps-elastic
sudo http.proxy="http://tstark:pssecrocks@172.31.245.222:8888" docker build -f /lab_security-log-analysis-using-a-siem/dockerfile_elastic -t "ps-elastic" .
sudo http.proxy="http://tstark:pssecrocks@172.31.245.222:8888" docker build -f /lab_security-log-analysis-using-a-siem/dockerfile_kibana -t "ps-kibana" .
