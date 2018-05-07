#!/bin/bash

root_path=.

cp ~/.vim/doc/* ./vimdoc

git add ${root_path}/* ${root_path}/.gvimrc
git commit -m "update"
git push -u origin master
