#!/bin/bash

# Run as Root

## 1. 安裝 Passenger PGP key 和 HTTPS support for package manager
apt install -y dirmngr gnupg
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
apt install -y apt-transport-https ca-certificates

## 2. Add passenger APT repository
sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger xenial main > /etc/apt/sources.list.d/passenger.list'
apt update

## 3. 安裝 Passenger and NGINX
apt install -y nginx-extras passenger