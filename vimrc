" vimrc - Universal customization for Vim
" by David Jacobs

set nocompatible

" -----------------------------------------------------------
" Package configuration
" ----------------------------------------------------------- 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-pastie'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rake'
Bundle 'Lokaltog/vim-powerline'
Bundle 'wincent/Command-T'
Bundle 'scrooloose/nerdtree'
Bundle 'rson/vim-conque'
Bundle 'ervandew/supertab'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/VimClojure'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/html5-syntax.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdcommenter'
Bundle 'gregsexton/gitv'
Bundle 'mileszs/ack.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'duskhacker/sweet-rspec-vim'
Bundle 'vim-scripts/slimv.vim'
Bundle 'technomancy/clojure-mode'
Bundle 'emezeske/paredit.vim'

" -----------------------------------------------------------
" General configuration
" -----------------------------------------------------------

filetype off
filetype plugin indent on
syntax on

" set clipboard=unnamed   " Allow anonymous clipboard
set hidden              " Allow unsaved changes in hidden buffers
set hlsearch            " Highlight search results
set visualbell t_vb=    " Get rid of that annoying error beep & flash
set expandtab           " Use soft tabs
set tabstop=2           " Width of soft tabs
set autoindent 
set shiftwidth=2        " Width of autoindent
set smartindent
set smarttab            " Use shiftwidth to tab at line beginning
set wrap                " Wrap text inside screen
set linebreak           " Wrap words, not characters
set linespace=4         " Baseline spacing, measured in pixels
set nolist              " Do not show difference between tabs and spaces
set number              " Show line numbers
set incsearch           " Incremental search
set ignorecase          " Ignore search case
set smartcase           " ... unless uppercase letters are explicit
set completeopt-=menu   " Bash-like inline completion
set foldmethod=indent   " Fold using indentation
set scrolloff=7         " How far away from the edge the cursor initiates scrolling
set tildeop             " Tilde is an operator
set formatprg=par\ -w80 " Format paragraphs using par
set wig+=checkouts/**   " Completion/search blacklist
set wig+='
set wig+=tmp/**
set autoread
set autowriteall        " Save when focus is lost
set statusline=

autocmd FocusLost * silent! wall

nmap <D-W> :color wombat<CR>
nmap <D-C> :color desert<CR>
nmap <D-I> :color ir_black<CR>
nmap <D-L> :color solarized<CR>

if has('unix') || has('mac')
  set directory=/tmp    " Don't store swap files by the originals!
end

" -----------------------------------------------------------
" Keyboard configuration
" -----------------------------------------------------------

let mapleader=','
let maplocalleader=';'

" kj - the easy way to escape insert mode 
inoremap kj <Esc>

" Q - the easy way to quit
noremap Q :q<CR>

" Leader/z - the easy way to fold one level
noremap <Leader>z zMzr

" Leader/a - the easy way to select all
noremap <Leader>aa ggVG

" Leader/s - the easy way to search
" nmap <Leader>s :%s/
" vmap <Leader>s :s/

" Run == formatting on the entire file and return to original position
noremap <Leader>= gg=G``
noremap <D-M-i> gg=G``

" Sudo - even if you didn't open the file as root
cmap w!! %!sudo tee > /dev/null %

" Easy splits, navigation, search, buffers & tabs
map <F9>        :split<CR>
map <D-j>       :split<CR>
map <F10>       :vsplit<CR>
map <D-k>       :vsplit<CR>
map <C-j>       <C-w>j
map <C-k>       <C-w>k
map <C-h>       <C-w>h
map <C-l>       <C-w>l

map <Leader>y   :nohls<CR>
map Y           y$

map <Leader>bl  :buffers<CR>
map <Leader>bn  :bn<CR>
map <M-D-Left>  :bp<CR>
map <Leader>bp  :bp<CR>
map <M-D-Right> :bn<CR>
map <Leader>b   :b#<CR>

imap <D-CR>     <ESC>o

" Copy current file path to system pasteboard
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

map <D-<>       :tabedit $MYVIMRC<CR>

" Plugins
map <Leader>a :Ack ""<Left>
map <Leader>rt :!/usr/local/bin/ctags -R --exclude=.git --exclude=log ./* `rvm gemhome`/*<CR>

map <Leader>N :CommandTFlush<CR>:CommandT<CR>
map <D-N>     :CommandTFlush<CR>:CommandT<CR>

map <Leader>e :CommandTBuffer<CR>
map <D-e>     :CommandTBuffer<CR>

map <Leader>t :CommandTFlush<CR>
map <D-y>     :CommandTFlush<CR>

map <D-n>     :NERDTreeToggle<CR>
map <Leader>n :NERDTreeToggle<CR>

map <D-/>     <plug>NERDCommenterToggle
map <Leader>/ <plug>NERDCommenterToggle

map <D-r>     :SweetVimRspecRunFile<CR>
map <D-R>     :SweetVimRspecRunFocused<CR>
map <M-D-r>   :SweetVimRspecRunPrevious<CR>

" -----------------------------------------------------------
" Plugin configuration
" -----------------------------------------------------------

let g:CommandTMaxDepth=8
let g:CommandTMaxHeight=10
let g:NERDTreeWinSize=20
let g:NERDTreeChDirMode=2
let g:NERDTreeDirArrows=1
let g:NERDSpaceDelims=1               " Add a space before comments
let g:NERDTreeIgnore=['tags']
let g:NERDTreeMinimalUI=1
let g:rails_statusline=0
let g:Powerline_symbols = 'fancy'

let vimclojure#HighlightBuiltins=1
let vimclojure#ParenRainbow=1

" Ack functions, taken from: 
" https://github.com/pivotal/vim-config/commit/ddb041154c250e2eefacdc2916e7bbd3c51f42c0#diff-2
function! AckCommand()
  let command = "ack ".expand("<cword>")
  cexpr system(command)
  cw
endfunction

function! AckVisual()
  normal gv"xy
  let command = "ack ".@x
  cexpr system(command)
  cw
endfunction

map <Leader>a :call AckCommand()<CR>
vmap <Leader>a :call AckVisual()<CR>

" -----------------------------------------------------------
" Post-init configuration
" -----------------------------------------------------------

if getcwd() == expand('~')
  if isdirectory(expand('~/Projects'))
    cd ~/Projects
  elseif isdirectory(expand('~/projects'))
    cd ~/projects
  elseif isdirectory(expand('~/workspace'))
    cd ~/workspace
  endif
endif

set foldlevel=20
