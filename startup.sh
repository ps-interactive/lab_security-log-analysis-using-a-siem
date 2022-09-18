#!/bin/bash
sudo docker network create ps-elastic
sudo http.proxy="http://tstark:pssecrocks@172.31.245.222:8888" docker build -f /lab_security-network-analysis-using-zeek-logs/dockerfile_elastic -t "ps-elastic" .
sudo http.proxy="http://tstark:pssecrocks@172.31.245.222:8888" docker build -f /lab_security-network-analysis-using-zeek-logs/dockerfile_kibana -t "ps-kibana" .
