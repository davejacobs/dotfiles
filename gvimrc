" .gvimrc - GUI customization for GVim and MacVim

" -----------------------------------------------------------
" General configuration
" -----------------------------------------------------------

set guioptions=         " Reset options
set guioptions+=a       " Autoselect
set guioptions+=A       " Autoselect
set guioptions+=i       " Show Vim icon in taskbar
set guioptions-=m       " Remove menu bar
set guioptions-=T       " Remove toolbar
set guioptions-=l       " Remove left scrollbar
set guioptions-=r       " Remove right scrollbar
set guioptions-=b       " Remove bottom scrollbar
" set lines=40
" set columns=100
set visualbell t_vb=    " Get rid of that annoying error beep & flash

highlight Search gui=underline
highlight Search guibg=#333333
highlight clear nontext " Hide non-text characters
highlight link nontext ignore

if has("gui_gtk2")
  set guifont=Monaco\ 11
  set lines=35
  set columns=90
elseif has("gui_macvim")
  " Inconsolata only looks good in experimental renderer
  set guifont=Inconsolata:h18
  set fuoptions+=background:normal
  set fuoptions+=maxhorz " Fully expand in fullscreen mode,
  set fuoptions+=maxvert " horizontally and vertically

  " Reassign important MacVim key bindings
  " macmenu &File.New\ Window     key = <nop>
  " macmenu &File.New\ Tab        key = <nop>
  macmenu &Edit.Find.Find\.\.\. key = <nop>
  map <D-f>   :set invfu<CR>                
elseif has("gui_win32")
  set guifont=Monaco:h13
end

" color ir_black
" color desert
" color macvim
" color wombat
color solarized
set background=light

nmap <D-W> :color wombat<CR>
nmap <D-C> :color desert<CR>
nmap <D-I> :color ir_black<CR>
nmap <D-L> :color solarized<CR>

map <D-j>       :split<CR>
map <D-k>       :vsplit<CR>

map <M-D-Left>  :bp<CR>
map <M-D-Right> :bn<CR>
imap <D-CR>     <Esc>o

noremap <D-M-i> gg=G``

" Copy current file path to system pasteboard
map <silent> <D-C> :call CopyPathWithLine()<CR>
map <silent> <D-F> :call CopyClojureNamespace()<CR>

map <D-<>     :edit $MYVIMRC<CR>

map <D-N>     :CommandTFlush<CR>:CommandT<CR>
map <D-e>     :CommandTBuffer<CR>
map <D-n>     :NERDTreeToggle<CR>
map <D-/>     <plug>NERDCommenterToggle
