#!/bin/bash

mkdir ~/Code
cd ~/Code

# Install/Configure git
sudo apt-get install -y git
git config --global user.name "Ryan Peterman"
git config --global user.email "RyanLPeterman@gmail.com"
git config --global color.ui auto # allow git to use colored output
# tell git to recognize whitespace problems
git config --global core.whitespace trailing-space,space-before-tab 
# show diffstat at end of merge
git config --global merge.stat true
# use global .gitignore for all projects
git config --global core.excludesfile '~/.gitignore'
ln -s ~/Code/dotfiles/.gitignore ~/.gitignore

# Get dotfiles
git clone https://github.com/RyanLPeterman/dotfiles.git

# For paper theme
sudo add-apt-repository -y ppa:snwh/pulp 
ln -s ~/Code/dotfiles/.fonts ~/.fonts

# Clean/Update
sudo apt-get -y update
sudo apt-get -y autoclean
sudo apt-get -y autoremove

# Command line tools
sudo apt-get -y install vim #TODO: setup vim plugins
ln -s -f ~/Code/dotfiles/.vimrc ~/.vimrc
sudo apt-get -y install tmux
sudo apt-get -y install autojump
sudo apt-get -y install node
sudo apt-get -y install shutter

# Python tools
sudo apt-get -y install pylint
sudo apt-get -y install python-pip
sudo pip install numpy

# OCaml tools
sudo apt-get -y install ocaml
sudo apt-get -y install opam
sudo opam -y init
sudo opam -y depext conf-m4.1
sudo opam -y install utop 

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
gsettings set org.gnome.desktop.interface monospace-font-name 'Inconsolata 12'
gsettings set org.gnome.nautilus.desktop font 'Roboto 10'

# Zsh
sudo apt-get -y install zsh
sudo apt-get -y install git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
ln -s -f ~/Code/dotfiles/.zshrc ~/.zshrc
chsh -s `which zsh`
echo "Setup complete! zsh will be available on restart."

