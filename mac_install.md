# mac install

## overview

**mac** is diffrent from **window** and **linux**.

*outline*

[TOC]

## package manager

```ruby
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## software

### by brew
```bash
brew install macvim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
brew install tree
brew install dos2unix

brew install boost
brew install R
brew install julia

brew install pip
pip install cpplint
pip install numpy
pip install matplotlib
pip install --user nose tornado sympy
brew install octave
```

### by chrome

* chrome
* dash
* vim
* bash
* typora
* umlet/jdk

### by appstore

* numbers
* pages
* keynote

### language

* c/c++/gdb/cpplinq/boost/cpplint/astyle
* golang/gofmt
* lua
* python/pylint/pep8
* perl
* php
* ruby
* r
* julia
* octave

## vim

```vimscript
" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" .vimrc .gvimrc
" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
winpos 0 0
set lines=62
set columns=86
set encoding=utf8
set noundofile
set nobackup
set noswapfile

colorscheme morning

set nocompatible
set langmenu=en_US
let $LANG='en_US'

"set guifont=Courier\ New\ Italic:h12
"set guifont=Consolas\ Italic:h12
set guifont=Latin\ Modern\ Mono\ 10\ Italic:h14

set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2
set textwidth=79
set hls

set mouse=a

set nu
set laststatus=2
set statusline=(%02n)%t%m%r%h%w\[%{&ff}:%{&enc}:%Y]\[line=%4l/%04L\ col=%03c/%03{col(\"$\")-1}][%p%%]
set cursorline
autocmd InsertEnter * se cul

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=l
set guioptions-=R
set guioptions-=L


filetype indent on
filetype plugin on
syntax enable
syntax on

set completeopt=longest,menu
set wildmenu

autocmd FileType ruby, eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete


nnoremap <silent> <F12> :A<cr>
```

## bash

**.bash_profile**
```Bash
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS='exfxcxdxbxegedabagacad'

export PS1='\u @ \w $ '

alias vim=mvim
alias ll='ls -l'
```

**.bashrc**
```Bash
```

## astyle


## font

```bash
brew install cabextract
cd ~/Downloads
mkdir consolas
cd consolas
curl -O http://download.microsoft.com/download/f/5/a/f5a3df76-d856-4a61-a6bd-722f52a5be26/PowerPointViewer.exe
cabextract PowerPointViewer.exe
cabextract ppviewer.cab
open CONSOLA*.TTF
```

## git

```bash
git init
git add wiki.md
git commit -m "comment"
git config --global --edit
git status

ssh-keygen -t rsa -C "youremail@qq.com"
cat ~/.ssh/id_rsa.pub

git remote add origin https://github.com/$user/doc.git
git push -u origin master

#############
git status
git add
git commit
git push
```
