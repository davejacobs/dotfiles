" .vimrc - Universal customization for Vim
" by David Jacobs

" Source this file after saving it
" autocmd bufwritepost .vimrc source $MYVIMRC 

" Pathogen configuration
set nocompatible
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
syntax on

" General configuration
set clipboard=unnamed   " Allow anonymous clipboard
set hls                 " Highlight search results
set vb t_vb="."         " Get rid of that annoying error beep & flash
set expandtab           " Use soft tabs
set tabstop=2           " Width of soft tabs
set autoindent 
set shiftwidth=2        " Width of autoindent
set cindent             " C-style autoindenting
set smartindent
set smarttab            " Use shiftwidth to tab at line beginning
set wrap                " Wrap text inside screen
set linebreak           " Wrap words, not characters
set linespace=4         " Measured in pixels
set nolist              " Do not show difference between tabs and spaces
set foldmethod=marker   " Fold using visual cues {{{ and }}}
set formatprg=par\ -w80 " Format paragraphs using par

" Prevent checkouts folder from being included in Command-T
" directory searches
set wildignore+=checkouts/**,.git

if has('unix') || has('mac')
  set directory=/tmp  " Don't store swap files by the originals!
end

" My remapped keys
let mapleader=','
let maplocalleader=';'

" kj- the easy way to escape insert mode 
inoremap kj <Esc>

" Disable those damned arrow keys!
map <Left>  <NOP>
map <Right> <NOP>
map <Up>    <NOP>
map <Down>  <NOP>

" Easy splits & navigation
map <D-j>   :split<CR>
map <D-k>   :vsplit<CR>
map <C-j>   <C-w>j
map <C-k>   <C-w>k
map <C-h>   <C-w>h
map <C-l>   <C-w>l

" Easy clipboard manipulation, ugly/non-orthogonal for now
nmap rd     "_dP
nmap rdd    "_ddP
nmap rciw   "_ciw<Esc>p

" Plugins
map <C-r>   :ConqueTermSplit lein repl<CR>
map <D-r>   :ConqueTermSplit lein repl<CR>
map <C-e>   :NERDTree<CR>
map <D-e>   :NERDTree<CR>

let g:ConqueTerm_Syntax='clojure'
let g:NERDTreeWinSize=20
let g:NERDTreeChDirMode=2
let vimclojure#HighlightBuiltins=1
let vimclojure#ParenRainbow=1

" -----------------------------------------------------------
" Post-init setup
" -----------------------------------------------------------

cd ~/Projects
