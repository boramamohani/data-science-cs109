#! /bin/bash

function install {
    echo installing $1
    shift
    apt-get -y install "$@" >/dev/null 2>&1
}

echo "Initializing..."
sudo apt-get install -y software-properties-common >/dev/null 2>&1
sudo apt-get -y update >/dev/null 2>&1
sudo apt-get -y upgrade >/dev/null 2>&1

install 'basic development tool' build-essential curl wget libsqlite3-dev libpq-dev

install Git git
install Nginx nginx
install Nodejs nodejs
install npm npm
install Redis redis-server redis-tools
install 'ImageMagick(Image processor)' imagemagick
install Java default-jre default-jdk

#install PostgreSQL postgresql postgresql-contrib libpq-dev
#sudo -u postgres createuser --superuser vagrant

echo 'installing heroku toolbelt'
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh

update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8

#echo 'installing emacs 23'
#sudo apt-get install emacs

echo 'installing vim'
sudo apt-get install vim

echo 'installing zsh'
sudo apt-get install zsh

echo 'installing nvim'
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

echo 'setting vi and vim link to nvim path'
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60


