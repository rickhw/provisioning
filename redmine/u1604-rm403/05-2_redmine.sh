#!/bin/bash

# Run as redmine

## 1. 下載官方 Image
cd /data/redmine
wget https://www.redmine.org/releases/redmine-4.0.3.tar.gz
tar zxvf redmine-4.0.3.tar.gz
ln -s redmine-4.0.3 current
cd current

## 2. 設定資料庫, 只改 production 就好
cp -pR config/database.yml.example config/database.yml

## 3. 執行 gem, bundle 安裝依賴套件
gem install bundler  # < 1m
bundle install --without development test # < 10m


## 4. 用 Rake 啟動 redmine
bundle exec rake generate_secret_token

## 5. Migrate Database Schema
RAILS_ENV=production bundle exec rake db:migrate

## 6. Load Initial Data
~$ RAILS_ENV=production bundle exec rake redmine:load_default_data