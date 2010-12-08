" GUI options for MacVim
" Source the .gvimrc file after saving it
if has('autocmd')
  autocmd bufwritepost .gvimrc source ~/.gvimrc 
endif

" Set the theme
color ir_black

if has('gui_running') 
  " let do_syntax_sel_menu = 1|runtime! synmenu.vim|aunmenu &Syntax.&Show\ filetypes\ in\ menu
  set guioptions=aiA 
  set lines=44
  set columns=90
endif

if has('gui_macvim')
  " Disable toolbar, menu bar, scroll bars"
  set guioptions=aiA 
  set guifont=Menlo:h13

  " Set the theme, with a transparent background (even in fullscreen mode)
  set transparency=15
  set fuoptions=background:normal

  " Set the keyboard shortcuts
  macmenu &File.New\ Window key = <D-S-n>
  macmenu &File.New\ Tab key = <D-n>
  map <D-t> :CommandT<CR>

  " Hide non-text and ignored characters, according to the current color scheme
  highlight clear nontext
  highlight link nontext ignore
  " au colorscheme * hi clear nontext | hi link nontext ignore
endif
