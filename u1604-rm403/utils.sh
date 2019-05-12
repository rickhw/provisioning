#!/bin/bash

run_as_root() {
    if [ "$EUID" -ne 0 ]
        then echo "Please run as root"
        exit
    fi
}
