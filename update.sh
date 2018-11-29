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

ln -v -i -s ${pwd}/gitconfig ~/.gitconfig
git submodule init
git submodule update

#
# vim
#

ln -v -i -s ${pwd}/vim/vimrc ~/.vimrc
ln -v -i -n -s ${pwd}/vim ~/.vim

#
#
#

ln -v -i -s ${pwd}/zsh/zshrc ~/.zshrc

