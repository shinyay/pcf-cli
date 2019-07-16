#!/bin/bash

BOSH_CLI=5.5.1
OM_CLI=2.0.1
PIVNET_CLI=0.0.60

wget https://github.com/cloudfoundry/bosh-cli/releases/download/v${BOSH_CLI}/bosh-cli-${BOSH_CLI}-linux-amd64
sudo mv bosh-cli-* /usr/local/bin/bosh

wget https://github.com/pivotal-cf/om/releases/download/${OM_CLI}/om-linux-${OM_CLI}
sudo mv om-linux-* /usr/local/bin/om

wget https://github.com/pivotal-cf/pivnet-cli/releases/download/v${PIVNET_CLI}/pivnet-linux-amd64-${PIVNET_CLI}
sudo mv pivnet-linux* /usr/local/bin/pivnet

sudo chmod +x /usr/local/bin/bosh
sudo chmod +x /usr/local/bin/om
sudo chmod +x /usr/local/bin/pivnet

sudo apt update
sudo apt-get -y install jq
sudo apt-get -y install unzip
sudo apt-get -y install tmux
