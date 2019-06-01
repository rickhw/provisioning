#!/bin/bash

# Run as Root
source utils.sh
run_as_root

## Restart nginx
systemctl restart nginx

## Validate Passenger and Nginx
/usr/bin/passenger-config validate-install

## Check NGINX Status and Passenger process
/usr/sbin/passenger-memory-stats