" .vimrc - Universal customization for Vim
" by David Jacobs

" Wishlist
" - Solid directory switching for command-T

" Bundle options - using Pathogen.vim
set nocompatible

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
syntax on

" Source the .vimrc file after saving it
" if has('autocmd')
"   autocmd bufwritepost .vimrc source $MYVIMRC 
" endif

" Allow anonymous clipboard
set clipboard=unnamed

" Highlight search results:
set hls

" Get rid of that annoying beep
set vb t_vb="." 

" My remapped keys
let mapleader=','
let maplocalleader=';'

" jk - the easy way to escape insert mode 
inoremap kj <Esc>

" Use control + j or k to switch between split screens
map <C-j>   <C-W>j<C-W>_
map <C-k>   <C-W>k<C-W>_

" Disable those damned arrow keys!
map <Left>  <NOP>
map <Right> <NOP>
map <Up>    <NOP>
map <Down>  <NOP>

map <D-j> :split
map <D-k> :vsplit

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

" Don't store swap files by the originals!
if has('unix') || has('mac')
  set directory=/tmp
end

" Plugin configuration

" Conque subprocess key bindinds
map <D-r> :ConqueTerm lein repl

map <D-e> :NERDTree<CR>
map <C-e> :NERDTree<CR>
let g:NERDTreeWinSize=20
let g:NERDTreeChDirMode=2

let vimclojure#HighlightBuiltins=1
let vimclojure#ParenRainbow=1

" Format paragraphs using par
set formatprg=par\ -w80

" Post-init commands to set up environment
cd ~/Projects
