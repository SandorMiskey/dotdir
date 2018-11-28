#!/bin/sh

git submodule init
git submodule update
exit 0 

#
# vimrc
#

if [ ! -f ./vimrc ]; then
	echo "=> missing vimrc template"
else
	if [ -f ~/.vimrc ]; then
		echo "=> you already have .vimrc in your home"
	else
		ln -s ./vimrc ~/.vimrc
	fi
fi

#
# vim modules
#

if [ ! -d ./vim ]; then
	echo "=> missing vim template directory"
else
	if [ -d ~/.vim ]; then
		echo "=> you already have .vim directory in your home"
	else
		ln -s ./vim ~/.vim
	fi
fi

