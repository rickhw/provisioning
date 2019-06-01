#!/bin/bash

# Run as Root
source utils.sh
run_as_root

groupadd rvm
usermod -a -G rvm redmine
