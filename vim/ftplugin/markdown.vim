" Markdown.vim - For word processing

" General options
setlocal spell spelllang=en_us
" source $HOME/.vim/autocorrect.vim

" Mappings
nmap j gj
nmap k gk
vmap j gj
vmap k gk

if has("gui_macvim")
  " Fullscreen options
  set fuoptions-=maxvert " Don't expand text width for fullscreen
  set fuoptions-=maxhorz
endif
