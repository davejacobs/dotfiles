" .gvimrc - GUI customization for GVim and MacVim

set guioptions=         " Reset options
set guioptions+=i       " Show Vim icon in taskbar
set guioptions-=a       " Remove autoselect
set guioptions-=A       " Remove autoselect
set guioptions-=m       " Remove menu bar
set guioptions-=T       " Remove toolbar
set guioptions-=l       " Remove left scrollbar
set guioptions-=r       " Remove right scrollbar
set guioptions-=b       " Remove bottom scrollbar
set visualbell t_vb=    " Get rid of that annoying error beep & flash

autocmd BufEnter * highlight Search gui=underline
autocmd BufEnter * highlight clear nontext " Hide non-text characters
autocmd BufEnter * highlight link nontext ignore

if has("gui_gtk2")
  set guifont=Monaco\ 11
elseif has("gui_macvim")
  " Only looks good in experimental renderer
  set guifont=Inconsolata:h18

  " Delete MacVim key bindings before reusing
  macmenu &Edit.Find.Find\.\.\. key = <nop>

  " Conveniently access config files
  nmap <D-O>       :source %<CR>
  nmap <D-<>       :edit $MYVIMRC<CR>
  nmap <D-G>       :edit $MYGVIMRC<CR>
  nmap <D->>a      :edit ~/.vim/config/basic.vim<CR>
  nmap <D->>b      :edit ~/.vim/config/bundles.vim<CR>
  nmap <D->>f      :edit ~/.vim/config/functions.vim<CR>
  nmap <D->>k      :edit ~/.vim/config/keybindings.vim<CR>
  nmap <D->>f      :edit ~/.vim/config/plugins.vim<CR>

  map <D-F>       :set invfu<CR>
  map <M-D-Left>  :bprevious<CR>
  map <M-D-Right> :bnext<CR>

  map <D-e>       :CtrlPBuffer<CR>
  map <D-N>       :CtrlP<CR>
  map <D-n>       :NERDTreeToggle<CR>
  map <D-/>       <plug>NERDCommenterToggle

  " Copy current file path to system pasteboard
  map <Silent> <D-C>  :call CopyPathWithLine()<CR>
  map <Silent> <D-F>  :call CopyClojureNamespace()<CR>

  noremap <M-i> gg=G``
end

colorscheme solarized
set background=light
