" vimrc - Universal customization for Vim
" by David Jacobs

set nocompatible

runtime! config/bundles.vim
runtime! config/basic.vim
runtime! config/functions.vim
runtime! config/keybindings.vim
runtime! config/plugins.vim

filetype off
filetype plugin indent on
syntax on

runtime! config/cd.vim
