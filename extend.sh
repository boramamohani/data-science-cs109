#! /bin/bash

echo 'python-dev python-pip python3-dev python3-pip'
sudo apt-get install python-dev python-pip python3-dev python3-pip


echo 'updating books folder'
cd ~/book
git pull

echo 'installing python modules'
sudo pip install --upgrade pip
sudo pip install --upgrade setuptools
sudo apt-get install python-tk

sudo pip install ipython
sudo pip install pandas
sudo pip install beautifulsoup
sudo pip install bs4
sudo pip install --upgrade bs4
sudo pip install matplotlib
sudo pip install sklearn
sudo pip install pyquery
sudo pip install notebook


echo 'installing feh'
sudo apt-get install feh

echo 'installing caca-utils'
sudo apt-get install caca-utils

echo 'configure zsh'
sudo apt-get install git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s 'which zsh'
sudo shutdown -r 0
