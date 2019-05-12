#!/bin/bash

# Run as Root

## Restart nginx
systemctl restart nginx

## Validate Passenger and Nginx
/usr/bin/passenger-config validate-install

## Check NGINX Status and Passenger process
/usr/sbin/passenger-memory-stats