#!/bin/bash -e

# install proggy font
mkdir -p $HOME/.fonts
cd $HOME/.fonts
wget http://www.proggyfonts.net/wp-content/download/ProggyClean.ttf.zip
unzip -o ProggyClean.ttf.zip
rm ProggyClean.ttf.zip
cd -

mkdir -p $HOME/.emacs.d

install -m0644 ./dotemacs $HOME/.emacs
install -d ~/.emacs.d/auto-package
install -m0644 ./auto-package.el $HOME/.emacs.d/auto-package

cd $HOME/.emacs.d
rm -rf bb-mode
rm -rf nyan-mode
git clone https://github.com/TeMPOraL/nyan-mode.git
git clone https://github.com/mferland/bb-mode.git
cd -

exit 0
