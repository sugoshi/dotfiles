#!/bin/sh
curDir=$(cd $(dirname $0) && pwd)
echo $curDir
ln -s ${curDir}/.vimrc ~/.vimrc
ln -s ${curDir}/.vim ~/.vim
ln -s ${curDir}/.bash_profile ~/.bash_profile
