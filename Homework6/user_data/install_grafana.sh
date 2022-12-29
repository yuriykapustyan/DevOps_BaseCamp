#!/bin/bash

sudo apt update
sudo apt-get install -y gnupg2 curl software-properties-common
curl https://packages.grafana.com/gpg.key | sudo apt-key add -
sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"
sudo apt update
sudo apt -y install grafana
sudo sed -i.bak 's/;http_port = 3000/http_port = 80/g' /etc/grafana/grafana.ini
sudo sed -i.bak 's/CapabilityBoundingSet=/CapabilityBoundingSet=CAP_NET_BIND_SERVICE/g' /lib/systemd/system/grafana-server.service
sudo sed -i.bak '/Service/a AmbientCapabilities=CAP_NET_BIND_SERVICE' /lib/systemd/system/grafana-server.service
sudo systemctl daemon-reload
sudo systemctl restart grafana-server
sudo systemctl enable grafana-server