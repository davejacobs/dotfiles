" Universal customization for Vim
" Bundle options - using Pathogen.vim
set nocompatible

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

syntax on

" Source the .vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC 
endif

" My remapped keys
let mapleader=','
let maplocalleader=';'

" jk - the easy way to escape insert mode 
inoremap kj <Esc>

" Use control + j or k to switch between split screens
map <C-J>   <C-W>j<C-W>_
map <C-K>   <C-W>k<C-W>_

" Disable those damned arrow keys!
map <Left>  <NOP>
map <Right> <NOP>
map <Up>    <NOP>
map <Down>  <NOP>

set clipboard=unnamed

" Set tab options
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set expandtab
set cindent

" Set wrap variables
set linespace=4
set wrap
set linebreak
set nolist
set foldmethod=marker

" Highlight search results:
set hls

" Get rid of that annoying beep
set vb t_vb="." 

" Don't store swap files by the originals!
if has('win32') || has('win64')
   set directory=$TMP
else
   set directory=/tmp
end

" Plugin settings
map <D-e> :NERDTree<CR>
map <C-e> :NERDTree<CR>
let g:NERDTreeWinSize = 20

" Format paragraphs using par
set formatprg=par\ -w80

" Lisp and Clojure development
let vimclojure#HighlightBuiltins = 1
let vimclojure#ParenRainbow = 1

" Post-init commands to set up environment
cd ~/Projects
