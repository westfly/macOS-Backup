#!/bin/sh

## 将 cd 后面的路径换成你保存备份文件清单的路径,默认是坚果云根文件夹的路径
cd ~/Documents/我的坚果云

## 恢复使用 brew 命令安装的软件
brew install `cat brew.txt`

## 恢复使用 brew cask 命令安装的软件
brew cask install `cat brewcask.txt`

## 恢复使用 pip 命令安装的软件
# pip install `cat pip.txt`

## 恢复使用 pip3 命令安装的软件
# pip3 install `cat pip3.txt`

## 恢复使用 gem 命令安装的软件
# sudo gem install `cat gem.txt`