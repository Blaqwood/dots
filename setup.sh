#!/usr/bin/env bash

DIR=`pwd`
DEST="$HOME/.config"
PDIR="$HOME"

main() {
	dependencies
    copy_config
}

install_arch_btw() {
    pacman -Sy --needed base-devel
    mkdir ./build
    git clone https://aur.archlinux.org/packages/paru-bin build/paru
    cd ./build/paru
    makepkg -si
    paru -S --needed xorg zsh polybar rofi i3 papirus-icon-theme rxvt-unicode urxvt-clipboard urxvt-resize
}

install_ubuntu()) {
    apt update
    apt install zsh polybar rofi i3 rxvt-unicodfe
}

dependencies() {
	clear
	echo -e "Do you want to install dependencies?(Optional)"

	read -p "[y/n]"

	if [[ $REPLY == "y" ]]; then
		read -p "Select a Distribution (Ubuntu/Arch)"
        if [[ $REPLY == "Arch" ]]; then
            install_arch_btw
        elif [[ $REPLY =="Ubuntu" ]] then
            install_ubuntu
        fi
	elif [[ $REPLY == "n" ]]; then
		echo "Bruh...\n"
        exit 1
	else
		echo -e "Bruh..."
		exit 1
	fi
}
copy_config() {
    cp -rf ./.config/* $HOME/.config
    cp -rf ./.zshrc $HOME
    cp -rf ./.Xresources $HOME
}
