#!/bin/sh

apt update

apt install -y unzip zsh

# Dependencies for asdf
apt install -y curl git

# Rust
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
