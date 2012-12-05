" vimrc - Universal customization for Vim
" by David Jacobs

set nocompatible

" -----------------------------------------------------------
" Package configuration
" ----------------------------------------------------------- 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'wincent/Command-T'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mileszs/ack.vim'
Bundle 'sjl/gundo.vim'

Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/VimClojure'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/html5-syntax.vim'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'groenewege/vim-less'

Bundle 'tpope/vim-surround'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'tpope/vim-endwise'
Bundle 'vim-scripts/paredit.vim'

Bundle 'altercation/vim-colors-solarized'

" -----------------------------------------------------------
" General configuration
" -----------------------------------------------------------

filetype off
filetype plugin indent on
syntax on

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
set foldlevelstart=20   " Do not fold by default
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

" Leader/z - the easy way to fold one level
noremap <Leader>z zMzr

" Run == formatting on the entire file and return to original position
noremap <Leader>= gg=G``

" Sudo - even if you didn't open the file as root
cmap w!! %!sudo tee > /dev/null %

" Easy splits, navigation, search, buffers & tabs
map <Leader>s  :split<CR>
map <Leader>v  :vsplit<CR>
map <C-j>       <C-w>j
map <C-k>       <C-w>k
map <C-h>       <C-w>h
map <C-l>       <C-w>l

map <Leader>y   :nohls<CR>
vmap <Leader>p  :!par<CR>
map Y           y$

map <Leader>bl  :buffers<CR>
map <Leader>bn  :bn<CR>
map <Leader>bp  :bp<CR>
map <Leader>b   :b#<CR>

" Copy current file path to system pasteboard
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

" Plugins
map <Leader>a :Ack ""<Left>
map <Leader>rt :!/usr/local/bin/ctags -R --exclude=.git --exclude=log ./* `rvm gemhome`/*<CR>

map <C-N> :CommandTFlush<CR>:CommandT<CR>
map <Leader>N :CommandTFlush<CR>:CommandT<CR>
" map <Leader>e :CommandTBuffer<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>/ <plug>NERDCommenterToggle

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
let g:Powerline_symbols='fancy'

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
