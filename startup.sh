#!/bin/bash

http.proxy="http://tstark:pssecrocks@172.31.245.222:8888" wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo http.proxy="http://tstark:pssecrocks@172.31.245.222:8888" apt-get install -y apt-transport-https
echo "deb https://artifacts.elastic.co/packages/8.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-8.x.list
sudo http.proxy="http://tstark:pssecrocks@172.31.245.222:8888" apt-get update && sudo http.proxy="http://tstark:pssecrocks@172.31.245.222:8888" apt-get install logstash

