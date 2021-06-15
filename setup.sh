#!/usr/bin/env sh

SRC='pwd'
DEST="$HOME"
mkdir $SRC/build
BUILD=$SRC/build

install_arch_btw() {
    pacman -Sy --needed base-devel

    git clone https://aur.archlinux.org/packages/paru-bin $BUILD/paru
    cd $BUILD/paru
    makepkg -si

    paru -S --needed xorg zsh polybar rofi i3 rxvt-unicode urxvt-clipboard urxvt-resize
}

install_ubuntu()) {
    apt update
    apt install zsh polybar rofi i3 rxvt-unicode
}

dependencies() {
	clear
	echo Do you want to install dependencies? (This is just some of my personal shit, might take long to finish)
	
	read -p "[y/n]"

	if [[ $REPLY == "y" ]]; then
		echo Select a Distribution (Ubuntu/Arch)
        if [[ $REPLY == "Arch" ]]; then
            install_arch_btw
        elif [[ $REPLY =="Ubuntu" ]] then
            install_ubuntu
	elif [[ $REPLY == "n" ]]; then
		exit 1
	else
		echo -e "\n[!] Bruh...\n"
		exit 1
	fi
}
copy_config() {
    cp -rf $SRC/.config/* $HOME/.config
    cp -rf $SRC/.zshrc
}

main() {
	dependencies
    
}

main