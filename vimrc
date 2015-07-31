" vimrc - Universal customization for Vim
" by David Jacobs

set nocompatible
filetype off

runtime! config/plugins.vim
runtime! config/plugins-config.vim
runtime! config/basic.vim
runtime! config/functions.vim
runtime! config/keybindings.vim

filetype plugin indent on
syntax on

runtime! config/cd.vim
