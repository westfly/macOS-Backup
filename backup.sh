#!/bin/sh

## 第一个是坚果云，第二个是 dropbox，默认路径是桌面
SOURCEIPA="$1"
## export Folder=~/Documents/我的坚果云/Backup
## export Folder=~/Dropbox/Backup
cd ${SOURCEIPA%/*}
## 备份使用 brew 命令安装的软件包
brew leaves > $Folder/brew.txt

## 备份使用 brew cask 命令安装的软件包
brew cask list -1 > $Folder/brewcask.txt

# 以下备份选项请自己选择开启，如需开启删掉命令前面的 # 即可
## 备份 Python 依赖库
# pip freeze > $Folder/pip.txt
# pip3 freeze > $Folder/pip3.txt

## 备份 Ruby 安装包
# gem list > $Folder/gem.txt

## 备份 oh-my-zsh 的配置文件
# cp ~/.zshrc $Folder/zshrc

## 备份 LLDB 的配置文件
# cp ~/.lldbinit $Folder/lldbinit

## 备份 Hexo 博客插件
# cd ~/Blog
# npm list --depth=0 > $Backup/npm.txt
