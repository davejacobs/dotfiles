" .gvimrc - GUI customization for GVim and MacVim

" -----------------------------------------------------------
" General configuration
" -----------------------------------------------------------

set guioptions=         " Reset options
set guioptions+=a       " Autoselect
set guioptions+=A       " Autoselect
set guioptions+=e       " Disable toolbar, menu bar, scroll bars"
set guioptions+=i       " Show Vim icon in taskbar
set guioptions-=m       " Remove menu bar
set guioptions-=T       " Remove toolbar
set guioptions-=l       " Remove left scrollbar
set guioptions-=r       " Remove right scrollbar
set guioptions-=b       " Remove bottom scrollbar
set lines=40
set columns=100
set visualbell t_vb=    " Get rid of that annoying error beep & flash
set background=dark
color ir_black          " http://ethanschoonover.com/solarized
color desert            " http://ethanschoonover.com/solarized

highlight Search gui=underline
highlight Search guibg=#333333
highlight clear nontext " Hide non-text characters
highlight link nontext ignore

set guifont=Monaco:h14

" -----------------------------------------------------------
" MacVim configuration
" -----------------------------------------------------------
if has('gui_macvim')
  " set transparency=25  " 25% opaque background
  set fuoptions+=background:normal
  set fuoptions+=maxhorz " Fully expand in fullscreen mode,
  set fuoptions+=maxvert " horizontally and vertically

  " Reassign important MacVim key bindings
  macmenu &Edit.Find.Find\.\.\. key = <nop>
  " macmenu &File.New\ Window     key = <nop>
  " macmenu &File.New\ Tab        key = <nop>

  map <D-f>   :set invfu<CR>                
  map <D-N>   :CommandT<CR>
  map <D-E>   :CommandTBuffer<CR>
endif

" -----------------------------------------------------------
" Auto sourcing
" -----------------------------------------------------------

" Source this file after saving it
" autocmd bufwritepost .gvimrc source $MYGVIMRC
