#!/bin/bash

# Run as redmine

# 取自官方網站: https://rvm.io
## 安裝 GPG Keys
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

## 安裝 RVM
curl -sSL https://get.rvm.io | bash -s stable

## 安裝過程會出現 public key not found 錯誤： `gpg: Can't check signature: public key not found`
## 依照指示，執行這段，再重新安裝 rvm 即可：
# gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B17<略>

## 再次安裝 RVM
#curl -sSL https://get.rvm.io | bash -s stable

## 驗證：重新 login as redmine, 確認 rvm 版本
rvm --version