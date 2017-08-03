"
" File: ~/.vimrc
" Author: Robin Myers
" Description: vim configuration file
"

" This must be set first, because it changes other options as a side effect
set nocompatible

" change the mapleader from \ to ,
let mapleader=","

""" General
filetype plugin indent on	     " filetype detection on

syntax enable                  " enable syntax highlighting
syntax on                      " enable syntax highlighting (legacy)

set number                     " show line numbers
set ruler                      " show line and column number
set showmatch                  " show matching brackets, parens, etc.
set backspace=indent,eol,start " allow backspacing over everything in insert
set nowrap                     " don't wrap lines
set hidden                     " buffers can exist in the background

""" Indentation
set autoindent                 " copy indent level from previous line
set smartindent                " smart auto-indenting on new line
set shiftround                 " indent/outdent to nearest tabstop
set shiftwidth=2               " use 2 spaces for autoindent
set tabstop=2                  " use 2 spaces for tabs
set softtabstop=2              " unify
set expandtab                  " make tabs into spaces
set smarttab                   " smarter tab levels

""" Backup & Swap
set noswapfile                 " turn swapfile off
set nobackup                   " turn backup off
set undolevels=100             " number of undos to remember
set history=100                " number of commands to remember

""" Search
set incsearch                  " show matches as you type
set ignorecase                 " ignore case in search
set smartcase                  " only ignore case if all lowercase
set hlsearch                   " highlight matches

"" Status Line Functions
function! Mode()
  redraw
  let l:mode = mode()

  if     mode ==# "n" | return "NORMAL"
  elseif mode ==# "i" | return "INSERT"
  elseif mode ==# "R" | return "REPLACE"
  elseif mode ==# "v" | return "VISUAL"
  elseif mode ==# "V" | return "V-LINE"
  else                | return l:mode
  endif
endfunc

""" Statusline
set laststatus=2
set statusline=
set statusline+=\ %{Mode()}
set statusline+=\ %<%F
set statusline+=%=
set statusline+=%{&filetype}\ 
set statusline+=\|\ %{&fileformat}\ 
set statusline+=\|\ %{&fileencoding?&fileencoding:&encoding}\ 
set statusline+=\|\ LN\ l/L\ 
set statusline+=\|\ (%p%%)\ 
set statusline+=\|\ COL\ %-3.c

