#!/bin/bash

cd ~

if [ -f .bashrc ]
then
  mv .bashrc .bashrc.bak
fi
if [ -d .vim ]
then
  mv .vim .vim.bak
fi
if [ -f .vimrc ]
then
  mv .vimrc .vimrc.bak
fi
if [ ! -d .ssh ]
then
  mkdir .ssh
  chmod 700 .ssh
fi

ln -s .configrepo/.bashrc .bashrc
ln -s .configrepo/.vim .vim
ln -s .configrepo/.vimrc .vimrc
ln -s .configrepo/.ssh/config .ssh/config
