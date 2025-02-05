#!/bin/bash

# Install required packages
apt-get update
apt-get -y install ca-certificates curl git make libsqlite3-dev libsqlite3-0 build-essential scdoc

# Install rust
cd ~
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"

# Build and install pimsync
git clone https://git.sr.ht/~whynothugo/pimsync pimsync
cd pimsync
make build
make install

mkdir /status
