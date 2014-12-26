#!/bin/bash -e

# install proggy font
mkdir $HOME/.fonts
cd $HOME/.fonts
wget http://www.proggyfonts.net/wp-content/download/ProggyClean.ttf.zip
unzip ProggyClean.ttf.zip
rm ProggyClean.ttf.zip

# TODO: cleanup .emacs.d if exists
mkdir $HOME/.emacs.d

install -m0644 ./dotemacs $HOME/.emacs
install -d ~/.emacs.d/auto-package
install -m0644 ./auto-package.el $HOME/.emacs.d/auto-package

cd $HOME/.emacs.d
git clone https://github.com/TeMPOraL/nyan-mode.git

cd $HOME/.emacs.d
git clone https://github.com/mferland/bb-mode.git

exit 0
