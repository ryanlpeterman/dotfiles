#!/bin/bash

# setup softlinks for all dotfiles from this repo
sudo apt-get install -y git
mkdir ~/Code
cd ~/Code
git clone https://github.com/RyanLPeterman/dotfiles.git
ln -s -f ~/Code/dotfiles/.vimrc ~/.vimrc
ln -s -f ~/Code/dotfiles/.zshrc ~/.zshrc
ln -s -f ~/Code/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/Code/dotfiles/.fonts ~/.fonts

# For paper theme
sudo add-apt-repository ppa:snwh/pulp 

# Clean/Update
sudo apt-get -y update
sudo apt-get -y autoclean
sudo apt-get -y autoremove

# Command line tools
sudo apt-get -y install tmux
sudo apt-get -y install autojump
sudo apt-get -y install node
sudo apt-get -y install shutter
sudo apt-get -y install unity-tweak-tool

# Python tools
sudo apt-get -y install pylint
sudo apt-get -y install python-pip
sudo pip install -y numpy

# OCaml tools
sudo apt-get -y install ocaml
sudo apt-get -y install opam
sudo opam install utop

# Java
sudo apt-get -y install default-jre

# Appearance
sudo apt-get -y install paper-gtk-theme
sudo apt-get -y install paper-icon-theme
gsettings set org.gnome.desktop.interface gtk-theme "Paper"
gsettings set org.gnome.desktop.interface icon-theme "Paper"
gsettings set com.canonical.Unity.Launcher launcher-position Bottom
gsettings set org.gnome.desktop.interface document-font-name 'Roboto 10'
gsettings set org.gnome.desktop.interface font-name 'Roboto 10'
gsettings set org.gnome.desktop.interface monospace-font-name 'Inconsolata 11'
gsettings set org.gnome.nautilus.desktop font 'Roboto 10'

# Zsh
sudo apt-get -y install zsh
sudo apt-get -y install git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`



