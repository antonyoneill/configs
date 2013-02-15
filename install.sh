#!/bin/bash
DIR=`pwd`
cd ~

if [ -f .bashrc ]
then
  mv .bashrc .bashrc.bak
fi
if [ -d .vim ]
then
  mv .vim .vim.bak
fi
if [ -d .zsh ]
then
  mv .zsh .zsh.bak
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

ln -s $DIR/.bashrc ~/.bashrc
ln -s $DIR/.vim ~/.vim
ln -s $DIR/.vimrc ~/.vimrc
ln -s $DIR/.ssh/config ~/.ssh/config
ln -s $DIR/.oh-my-zsh ~/.oh-my-zsh
ln -s $DIR/zsh/.zshrc ~/.zshrc
chmod 700 $DIR/.ssh/config
