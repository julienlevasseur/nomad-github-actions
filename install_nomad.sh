#!/bin/sh

latest_release=$(curl -sL -H "Accept: application/vnd.github+json" https://api.github.com/repos/hashicorp/nomad/releases/latest|jq -r .tag_name|sed s/v//g)
echo "https://releases.hashicorp.com/nomad/${latest_release}/nomad_${latest_release}_linux_amd64.zip"
wget https://releases.hashicorp.com/nomad/${latest_release}/nomad_${latest_release}_linux_amd64.zip
sudo unzip nomad_${latest_release}_linux_amd64.zip -d /usr/local/bin
rm nomad_${latest_release}_linux_amd64.zip
