#!/bin/bash
#TODO this is a copy/paste i haven't done anything with yet, do not use
wget -q0 - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-textset mouse 2/1 4
