#!/usr/bin/env bash

set -e

mkdir -p ~/go

curl https://storage.googleapis.com/golang/go1.7.5.linux-amd64.tar.gz | tar -C /usr/local -xz

echo "export PATH=${PATH}:/usr/local/go/bin" >> ~/.bashrc
