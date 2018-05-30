#!/bin/bash

root_path=.

cp ~/.vim/doc/* ./vimdoc
cp ~/.vim/template/* ./vimtemplate
cp ~/.vim/dictionary/* ./vimdictionary
cp ~/.gvimrc ${root_path}/.gvimrc
cp ~/.bash_profile ${root_path}/.bash_profile

git add ${root_path}/* ${root_path}/.gvimrc ${root_path}/.bash_profile
git commit -m "update"
git push -u origin master
