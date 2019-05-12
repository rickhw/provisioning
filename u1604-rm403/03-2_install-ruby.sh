#!/bin/bash

# Run as redmine

RUBY_VERSION=2.3.8

## 檢查 rvm 必要的套件
rvm requirements

## 安裝指定的 ruby version
rvm install ${RUBY_VERSION}

## 將此版本設定為預設
rvm use ${RUBY_VERSION} --default

## 驗證
ruby --version

