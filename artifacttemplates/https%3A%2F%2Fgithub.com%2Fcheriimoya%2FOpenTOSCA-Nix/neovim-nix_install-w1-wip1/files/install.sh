#!/usr/bin/env bash

# Fail early and loudly
set -euxo pipefail

# Get the correct nixpkgs checkout
NIXPKGS_CHECKOUT="https://codeload.github.com/NixOS/nixpkgs/zip"

if [ -z $NixpkgsVersion ]; then
    echo "NixpkgsVersion cannot be empty"
    exit 1
fi

NIXPKGS_CHECKOUT="$NIXPKGS_CHECKOUT/$NixpkgsVersion"

curl --fail -I "$NIXPKGS_CHECKOUT" || { echo "Failed to lookup nixpkgs checkout \"$NixpkgsVersion\", are you sure it exists?"; exit 2; }

# Install package into environment with given nixpkgs checkout
sudo -u $VMUserName sh -c "/home/$VMUserName/.nix-profile/bin/nix-env -I \"nixpkgs=$NIXPKGS_CHECKOUT\" -f '<nixpkgs>' -iA neovim"
