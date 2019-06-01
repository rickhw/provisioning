#!/bin/bash

# Run as Root
source utils.sh
run_as_root


## 建立 Redmine 使用者，資料放在 `/data/redmine`
adduser --system \
    --shell /bin/bash \
    --gecos 'Redmine Administrator' \
    --group \
    --home /data/redmine redmine;

## 允許 redmine 可以 sudo
adduser redmine sudo
passwd redmine