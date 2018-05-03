#!/bin/bash

root_path=.

git add ${root_path}/* ${root_path}/.gvimrc
git commit -m "update"
git push -u origin master
