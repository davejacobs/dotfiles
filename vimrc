" vimrc - Universal customization for Vim
" by David Jacobs

" -----------------------------------------------------------
" Pathogen configuration
" ----------------------------------------------------------- 
set nocompatible
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
syntax on

" -----------------------------------------------------------
" General configuration
" -----------------------------------------------------------

set clipboard=unnamed   " Allow anonymous clipboard
set hlsearch            " Highlight search results
set visualbell t_vb=    " Get rid of that annoying error beep & flash
set expandtab           " Use soft tabs
set tabstop=2           " Width of soft tabs
set autoindent 
set shiftwidth=2        " Width of autoindent
set cindent             " C-style autoindenting
set smartindent
set smarttab            " Use shiftwidth to tab at line beginning
set wrap                " Wrap text inside screen
set linebreak           " Wrap words, not characters
set linespace=4         " Baseline spacing, measured in pixels
set nolist              " Do not show difference between tabs and spaces
set incsearch           " Incremental search
set foldmethod=marker   " Fold using visual cues {{{ and }}}
set formatprg=par\ -w80 " Format paragraphs using par
set wig+=checkouts/**   " Completion/search blacklist
set wig+=.git
set wig+=tmp/**
set laststatus=2        " Always show status bar
set statusline=         " Customize status bar
set statusline+=\ %t\ \|\ len:\ \%L\ \|\ type:\ %Y\ \|\ ascii:\ \%03.3b\ \|\ hex:\ %2.2B\ \|\ line:\ \%2l

if has('unix') || has('mac')
  set directory=/tmp    " Don't store swap files by the originals!
end

if has('gui_running')
  color desert
  highlight Search gui=underline
else
  color desert
endif

" -----------------------------------------------------------
" Keyboard configuration
" -----------------------------------------------------------

let mapleader=','
let maplocalleader=';'

" kj- the easy way to escape insert mode 
inoremap kj <Esc>

" q - the easy way to quit
noremap Q   q
noremap q   :q<CR>

" s - the easy way to save
noremap s   :w<CR>

" Leader/a - the easy way to select all
noremap <Leader>a ggVG

" Run == formatting on the entire file and return to original position
noremap <Leader>= gg=G``

" Sudo - even if you didn't open the file as root
cmap w!! %!sudo tee > /dev/null %

" Disable those damned arrow keys!
map <Left>  <NOP>
map <Right> <NOP>
map <Up>    <NOP>
map <Down>  <NOP>

" Easy splits, navigation, search, buffers & tabs
map <F9>    :split<CR>
map <D-j>   :split<CR>
map <F10>   :vsplit<CR>
map <D-k>   :vsplit<CR>
map <C-j>   <C-w>j
map <C-k>   <C-w>k
map <C-h>   <C-w>h
map <C-l>   <C-w>l

map <Leader>y :nohls<CR>

map <Leader>bl :buffers<CR>
map <Leader>bn :bn<CR>
map <Leader>bp :bp<CR>
map <Leader>b  :b#<CR>

map <Leader>t :tabnew<CR>
map <Leader>l :tabn<CR>
map <Leader>h :tabp<CR>

" Easy clipboard manipulation, ugly/non-orthogonal for now
nmap <Leader>d   "_dP
nmap <Leader>dd  "_ddP
nmap <Leader>riw "_ciw<Esc>p

" Plugins
map <C-e> :NERDTreeToggle<CR>
map <D-e> :NERDTreeToggle<CR>

map <Leader>n :NERDTreeToggle<CR>

map <C-/> <plug>NERDCommenterToggle
map <D-/> <plug>NERDCommenterToggle

map <Leader>/ <plug>NERDCommenterToggle

map <C-i> :ConqueTermSplit lein repl<CR>
map <D-i> :ConqueTermSplit lein repl<CR>

map <Leader>sh :ConqueTermSplit bash<CR>
map <Leader>rb :ConqueTermSplit ripl<CR>
map <Leader>rc :ConqueTermSplit rails console<CR>
map <Leader>cl :ConqueTermSplit lein repl<CR>
map <Leader>py :ConqueTermSplit python<CR>

" -----------------------------------------------------------
" Plugin configuration
" -----------------------------------------------------------

let g:ConqueTerm_Syntax='clojure'
let g:ConqueTerm_SendVisKey = '<F8>'
let g:NERDTreeWinSize=20
let g:NERDTreeChDirMode=2
let g:miniBufExplMapCTabSwitchBufs=1

let vimclojure#HighlightBuiltins=1
let vimclojure#ParenRainbow=1

" -----------------------------------------------------------
" Aliases
" -----------------------------------------------------------

" command! Status  GitStatus
" command! Add     GitAdd
" command! Commit  GitCommit

" -----------------------------------------------------------
" Auto sourcing
" -----------------------------------------------------------

" Source this file after saving it
" autocmd bufwritepost .vimrc source $MYVIMRC 

" -----------------------------------------------------------
" Post-init configuration
" -----------------------------------------------------------
if getcwd() == expand('~')
  if isdirectory(expand('~/Projects'))
    cd ~/Projects
  elseif isdirectory(expand('~/workspace'))
    cd ~/workspace
  endif
endif
