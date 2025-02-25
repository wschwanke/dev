#!/bin/bash

echo "========================================="
echo "= Installing Go                         ="
echo "========================================="

GO_VERSION=1.24.0
GO_ROOT=/usr/local/go

cd /tmp

curl -O https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz

rm -rf /usr/local/go

tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz
