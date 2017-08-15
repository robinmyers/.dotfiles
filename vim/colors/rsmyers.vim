"
" File: ~/.vim/colors/rsmyers.vim
" Author: Robin Myers
" Description: vim configuration file
"
  
set background=dark
highlight clear
   
if exists("syntax_on")
  syntax reset
endif
      
let g:colors_name="rsmyers"     
        
""" General
hi Normal guifg=#e6e1dc guibg=#161616 ctermfg=254  ctermbg=234
hi LineNr guifg=#e6e1dc guibg=#202020 ctermfg=254  ctermbg=235

""" Cursor - Pure White Background
hi Cursor guifg=None    guibg=#ffffff gui=None ctermfg=None ctermbg=15 cterm=None
" hi CursorLine

""" Selections - Light Gray Background
hi Visual     guifg=None  guibg=#515a70 gui=None ctermfg=None ctermbg=240 cterm=None
" hi Search
hi IncSearch  guifg=None  guibg=#515a70 gui=None ctermfg=None ctermbg=240 cterm=None
hi MatchParen guifg=None  guibg=#515a70 gui=None ctermfg=None ctermbg=240 cterm=None

""" StatusLine
" hi StatusLine
" hi StatusLineNC

""" Comments - Purple
hi Comment guifg=#ad2ea4 guibg=None    gui=italic ctermfg=127 ctermbg=None cterm=italic
hi Todo    guifg=#161616 guibg=#ad2ea4 gui=bold  ctermfg=234  ctermbg=127  cterm=bold 

""" Orange
hi Define         guifg=#fc6f09 guibg=None ctermfg=208 ctermbg=None
hi Statement      guifg=#fc6f09 guibg=None ctermfg=208 ctermbg=None
" hi Identifier   guifg=#fc6f09 guibg=None ctermfg=208 ctermbg=None
hi pythonBuiltin  guifg=#fc6f09 guibg=None ctermfg=208 ctermbg=None

""" Light Blue
hi Function guifg=#1edafb guibg=None ctermfg=45 ctermbg=None
hi Type     guifg=#1edafb guibg=None ctermfg=45 ctermbg=None

""" Strings - Bright Green
hi Character guifg=#8dff0a guibg=None ctermfg=118 ctermbg=None
hi String    guifg=#8dff0a guibg=None ctermfg=118 ctermbg=None

""" Numbers - Dull Green
hi Number guifg=#58c554 guibg=None ctermfg=77 ctermbg=None
hi Fliat  guifg=#58c554 guibg=None ctermfg=77 ctermbg=None

""" Booleans - Pale Yellow
hi Boolean guifg=fdc251 guibg=None ctermfg=179 ctermbg=None

""" Pale Green 
" hi Constatnt  guifg=#87ffaf guibg=None ctermfg=121 ctermbg=None
" hi Identifier guifg=#87ffaf guibg=None ctermfg=121 ctermbg=None
