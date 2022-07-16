#!/usr/bin/env bash

# Fail early and loudly
set -euxo pipefail

# Update apt repo
sudo apt-get update -qq;

# Get the nix installer script
curl -L https://nixos.org/nix/install -o /tmp/install

# Install nix as a single user install
sudo -u $VMUserName sh /tmp/install --no-daemon
