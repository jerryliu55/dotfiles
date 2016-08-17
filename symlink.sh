#!/bin/bash

dir=~/.dotfiles
olddir=~/.dotfiles_old
files=".vimrc"

mkdir -p $olddir

cd $dir

for file in $files; do
  mv ~/$file $olddir/
  ln -s $dir/$file ~/$file
done

