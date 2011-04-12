" GUI options for MacVim
" Source the .gvimrc file after saving it
if has('autocmd')
  autocmd bufwritepost .gvimrc source ~/.gvimrc 
endif

" Set the theme
colorscheme solarized

if has('gui_running') 
  " let do_syntax_sel_menu = 1|runtime! synmenu.vim|aunmenu &Syntax.&Show\ filetypes\ in\ menu
  " Remove menu bar
  " set guioptions -= m
  " Remove toolbar
  " set guioptions -= T
  
  set guioptions=aiA 
  set lines=40
  set columns=100
  set vb t_vb="." 
endif

if has('gui_macvim')
  " Disable toolbar, menu bar, scroll bars"
  set guioptions=aiAe
  set guifont=Menlo:h13

  " Set the theme, with a transparent background (even in fullscreen mode)
  " set transparency=25
  set fuoptions=background:normal
  " grow to maximum horizontal width on entering fullscreen mode
  set fuoptions+=maxhorz
  set fuoptions+=maxvert

  " free up Command-F
  macmenu &Edit.Find.Find\.\.\. key = <D-S-f> 

  " toggle fullscreen mode
  map <D-f> :set invfu<CR>                

  " Set the keyboard shortcuts
  macmenu &File.New\ Window key = <D-S-n>
  macmenu &File.New\ Tab key = <D-n>
  map <D-t> :CommandT<CR>

  " Hide non-text and ignored characters, according to the current color scheme
  highlight clear nontext
  highlight link nontext ignore
  " au colorscheme * hi clear nontext | hi link nontext ignore
endif
