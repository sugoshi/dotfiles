#!/bin/sh
curDir=$(cd $(dirname $0) && pwd)
echo $curDir
ln -sf ${curDir}/.vimrc ~/.vimrc
ln -sf ${curDir}/.bash_profile ~/.bash_profile
