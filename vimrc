"
" File: ~/.vimrc
" Author: Robin Myers
" Description: vim configuration file
"

" This must be set first, because it changes other options as a side effect
set nocompatible

""" General
colorscheme rsmyers

filetype plugin indent on      " filetype detection on

syntax enable                  " enable syntax highlighting
syntax on                      " enable syntax highlighting (legacy)

set number                     " show line numbers
set nowrap                     " turn line wrapping off
set showmatch                  " show matching brackets, parens, etc.
set hidden                     " buffers can exist in the background
set backspace=indent,eol,start " allow backspacing over everything in insert

""" Indentation
set autoindent                 " copy indent level from previous line
set smartindent                " smart auto-indenting on new line

set tabstop=2                  " use 2 spaces for tabs
set expandtab                  " make tabs into spaces
set shiftwidth=2               " use 2 spaces for autoindent
set shiftround                 " indent/outdent to nearest tabstop
set softtabstop=2              " unify

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

""" Mappings
let mapleader=","
let maplocalleader="\\"

" Quickly return to normal more
:inoremap jk <esc>

" Quickly edit and reload .vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Wrap words in quotes
:nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
:nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
:vnoremap <leader>" <esc>v`<<esc>i"<esc>v`><esc>a"<esc>
:vnoremap <leader>' <esc>v`<<esc>i'<esc>v`><esc>a"<esc>

" Uppercase a word
inoremap <c-u> <esc>bvwUi
nnoremap <c-u> bvwU

""" Abbreviations
iabbrev @@ robin.myers87@gmail.com

""" Status Line
set laststatus=2               " Always display status line
set noshowmode                 " Don't (repeat) display mode under statusline

" Returns mode text
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

" Build statusline
set statusline=
set statusline+=\ %{Mode()}
set statusline+=\ %<%F
set statusline+=%=
set statusline+=%{&filetype}\ 
set statusline+=\|\ %{&fileformat}\ 
set statusline+=\|\ %{&fileencoding?&fileencoding:&encoding}\ 
set statusline+=\|\ LN\ %3l/%-3L\ 
set statusline+=\|\ (%3p%%)\ 
set statusline+=\|\ COL\ %-3.c

