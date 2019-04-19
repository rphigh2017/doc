" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" .vimrc
" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
winpos 0 0
set lines=50
set columns=86
set encoding=utf8
set noundofile
set nobackup
set noswapfile

" colorscheme morning
colorscheme macvim

set nocompatible
set langmenu=en_US
let $LANG='en_US'

"set guifont=Courier\ New\ Bold\ Italic:h12
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

" autocmd FileType ruby, eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete
set rtp+=~/go/src/github.com/golang/lint/misc/vim

au BufNewFile * silent! 0r ~/.vim/template/tpl.%:e:e
au BufNewFile,BufRead * silent! source ~/.vim/template/%:e.vim
au FileType * execute 'set dictionary+=~/.vim/dictionary/'.&filetype

nnoremap <c-j> /<+.\{-1,}+><cr>c/+>/e<cr>
inoremap <c-j> <ESC>/<+.\{-1,}+><cr>c/+>/e<cr>
nnoremap <F10> :!python %
