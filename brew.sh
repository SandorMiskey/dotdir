#!/bin/sh

pkgs=(coreutils htop nmap openvpn tmux unrar)
casks=(google-chrome skype vlc synology-drive whatsapp telegram brave sequel-pro tor-browser dictionaries macvim signal)

read -p "=> are you want to install or upgrade basic homebrew packages? [i/u/N] " ans
case "$ans" in
	i | I)
		cmd="install"
		;;
	u | U)
		cmd="upgrade"
		;;
	*)
		echo "=> you supposed to..."
		exit 1
		;;
esac

for pkg in ${pkgs[@]}; do
	brew $cmd $pkg
done

for pkg in ${casks[@]}; do
	brew cask $cmd $pkg
done

