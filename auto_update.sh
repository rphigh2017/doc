#!/bin/bash

root_path=.

cp ~/.vim/doc/* ./vimdoc
cp ~/.vim/template/* ./vimtemplate
cp ~/.vim/dictionary/* ./vimdictionary

git add ${root_path}/* ${root_path}/.gvimrc
git commit -m "update"
git push -u origin master
