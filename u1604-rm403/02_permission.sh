#!/bin/bash

# Run as Root

## 建立 Redmine 使用者，資料放在 `/data/redmine`
adduser --system \
    --shell /bin/bash \
    --gecos 'Redmine Administrator' \
    --group \
    --home /data/redmine redmine;

## 允許 redmine 可以 sudo
adduser redmine sudo
passwd redmine