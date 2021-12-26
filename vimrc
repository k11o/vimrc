set directory=$HOME/_vim/swp
set undodir=$HOME/_vim/undodir
set undofile

set backupdir=$HOME/_vim/backup

set viminfo+=n$HOME/_vim/info
set encoding=utf-8

set visualbell t_vb=
set noerrorbells

set number


" Note: Skip initialization for vim-tiny or vim-small.


if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Load files from ~/.vim/conf.d 
set runtimepath+=~/.vim/
runtime! conf.d/*.conf

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
set guifont=Monospace\ 12

set encoding=utf8
set fenc=utf-8


