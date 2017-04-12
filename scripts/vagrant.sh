#!/usr/bin/env bash
set -x

echo "Adding the vagrant ssh public key..."

export http_proxy="http://proxy.cfv.junta-andalucia.es:3128"
export https_proxy="http://proxy.cfv.junta-andalucia.es:3128"

mkdir /home/vagrant/.ssh
curl -Lo /home/vagrant/.ssh/authorized_keys https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh
