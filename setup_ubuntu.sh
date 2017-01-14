#!/bin/bash

# any command after that exit with error will cause script to exit
set -e 

mkdir ~/Code
cd ~/Code

sudo apt-get install -y git

# Get dotfiles
git clone https://github.com/RyanLPeterman/dotfiles.git

# Configure git
git config --global user.name "Ryan Peterman"
git config --global user.email "RyanLPeterman@gmail.com"
# allow git to use colored output
git config --global color.ui auto 
# tell git to recognize whitespace problems
git config --global core.whitespace trailing-space,space-before-tab 
# show diffstat at end of merge
git config --global merge.stat true
# use global .gitignore for all projects
ln -s ~/Code/dotfiles/.gitignore ~/.gitignore
git config --global core.excludesfile '~/.gitignore'
# set vim as default editor
git config --global core.editor "vim"

# For paper theme
sudo add-apt-repository -y ppa:snwh/pulp 
ln -s ~/Code/dotfiles/.fonts ~/.fonts

# Clean/Update
sudo apt-get -y update
sudo apt-get -y autoclean
sudo apt-get -y autoremove

# Command line tools
sudo apt-get -y install vim 
sudo apt-get -y install build-essential cmake # for YCM
ln -s -f ~/Code/dotfiles/.vimrc ~/.vimrc
vim +PlugInstall +qall
sudo apt-get -y install tmux
sudo apt-get -y install autojump
sudo apt-get -y install nodejs
sudo apt-get -y install npm
sudo apt-get -y install shutter

# Python tools
sudo apt-get -y install python-dev
sudo apt-get -y install pylint
ln -s -f ~/Code/dotfiles/.pylintrc ~/.pylintrc
sudo apt-get -y install python-pip
sudo pip install numpy

# OCaml tools
sudo apt-get -y install ocaml
sudo apt-get -y install opam
opam init -y
opam install -y depext
opam depext -y conf-m4.1
opam install -y utop 

# Java
sudo apt-get -y install default-jre

# Appearance
sudo apt-get -y install paper-gtk-theme
sudo apt-get -y install paper-icon-theme
gsettings set org.gnome.desktop.interface gtk-theme "Paper"
gsettings set org.gnome.desktop.interface icon-theme "Paper"
gsettings set com.canonical.Unity.Launcher launcher-position Bottom
gsettings set org.gnome.desktop.interface document-font-name "Roboto 10"
gsettings set org.gnome.desktop.interface font-name "Roboto 10"
gsettings set org.gnome.desktop.interface monospace-font-name "Inconsolata 12"
gsettings set org.gnome.nautilus.desktop font "Roboto 10"
gsettings set org.gnome.desktop.wm.preferences titlebar-font "Roboto 11"

# Zsh
sudo apt-get -y install zsh
sudo apt-get -y install git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
ln -s -f ~/Code/dotfiles/.zshrc ~/.zshrc

# Green text
echo "$(tput setaf 2)Setup complete!!"
echo "Please run the following command to change shell to zsh:"
echo "    chsh -s `which zsh`"
echo "This will make zsh the default shell upon reboot"

