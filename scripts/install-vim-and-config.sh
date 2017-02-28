#!/usr/bin/env bash

set -ex

apt-get install -y ncurses-dev gawk gettext libsm-dev libice-dev

pushd /tmp
  git clone https://github.com/vim/vim
  pushd vim
    ./configure --prefix=/usr/local --with-features=normal
    make && make install
  popd
popd

pushd ~/
  git clone https://github.com/krishicks/vim-config
  pushd vim-config
    git submodule update --init --recursive
  popd

  ln -s ~/vim-config/vim .vim
  ln -s ~/vim-config/vimrc .vimrc
popd
