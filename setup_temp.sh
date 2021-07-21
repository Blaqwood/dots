#!/usr/bin/env bash

# Install script for polybar themes

# Dirs
DIR=`pwd`
DEST="$HOME"
CDEST="$HOME/.config"
CDIR="$DIR/.config"

# Install Fonts
config() {
	echo -e "Setting shit up..."
	if [[ "$DISTRO" == 'arch' ]]; then
		
        cd ../..
        cp -rf $CDIR/* $CDEST
        cp -rf $DIR/.zshrc $DEST
        cp -rf $DIR/.Xresources $DEST
	elif [[ "$DISTRO" == 'ubuntu' ]]
        cp -rf $CDIR/* $CDEST
        cp -rf $DIR/.zshrc $DEST
        cp -rf $DIR/.Xresources $DEST
        sed -i 's/URxvt.perl/!URxvt.perl/g' $DEST/.Xresources
	fi
}

# dependencies for arch
deps() {
	if [[ "$DISTRO" == 'arch' ]]; then
		echo -e "Setup stuff up..."
        mkdir build
        cd build
        curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/paru-bin.tar.gz
        tar -xf paru-bin.tar.gz
        cd paru-bin
        makepkg -si
        paru -Sy --needed --noconfirm xorg-server zsh i3 rofi polybar rxvt-unicode urxvt-clipboard urxvt-resize
        paru -S neofetch
        echo -e "done"
    elif [[ "$DISTRO" == 'ubuntu']]; then
        echo -e "Setup stuff up..."
        apt update
        apt install zsh i3 rofi polybar rxvt-unicode
        echo -e "done"
	fi
}

# Main
main() {
	clear
	cat <<- EOF
		>>Do you want to install dependencies?...
		
		[y/n]
	
	EOF

	read -p "Select one:"

	if [[ $REPLY == "y" ]]; then
		echo -e "Arch/Ubuntu"
        config
	elif [[ $REPLY == "n" ]]; then
		DISTRO='ubuntu'
		deps

        config
	else
		echo -e "Bruh"
		exit 1
	fi
}

main
