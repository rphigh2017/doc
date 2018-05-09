#!/bin/bash

root_path=.

cp ~/.vim/doc/* ./vimdoc
cp ~/.vim/template/* ./vimtemplate
cp ~/.vim/dictionary/* ./vimdictionary
cp ~/.gvimrc ${root_path}/.gvimrc

git add ${root_path}/* ${root_path}/.gvimrc
git commit -m "update"
git push -u origin master
