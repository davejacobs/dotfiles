" Markdown.vim - For word processing

" General options
" source $HOME/.vim/autocorrect.vim

setlocal spell spelllang=en_us " Spell check
setlocal nosmartindent
setlocal cinoptions=           " Turn off programmer indentation
setlocal nonumber
setlocal nocindent             " C-style autoindenting
setlocal nosmarttab            " Use shiftwidth to tab at line beginning
setlocal tabstop=4
setlocal shiftwidth=4

" Mappings
nmap j gj
nmap k gk
vmap j gj
vmap k gk

if has("gui_macvim")
  " Fullscreen options
  setlocal fuoptions-=maxvert " Don't expand text width for fullscreen
  setlocal fuoptions-=maxhorz
endif
