#!/bin/sh

read -p "=> are you in the root of the repo and ready to overwrite your zsh/vim/ssh config? [y/N] " ans
case "$ans" in
	y | Y)
		echo "=> that's fine, then we're gonna go ahead"
		;;
	*)
		echo "=> you supposed to"
		exit 1
		;;
esac

pwd=$( pwd )

#
# clone submodules
#

ln -s ${pwd}/gitconfig ~/.gitconfig
git submodule init
git submodule update

#
# vim
#

ln -s ${pwd}/vim/vimrc ~/.vimrc
ln -s ${pwd}/vim ~/.vim

