" Keybindings.vim - All non-language-specific keybindings

let mapleader=','
let maplocalleader=';'

" kj - the easy way to escape inse;t mode 
inoremap kj <Esc>

" Leader/z - the easy way to fold one level
noremap <Leader>z zMzr

" Run == formatting on the entire file and return to original position
noremap <Leader>= gg=G``

" Get the convenience of 'o' in insert mode
imap <S-CR>     <Esc>o

" Sudo - even if you didn't open the file as root
cmap w!! %!sudo tee > /dev/null %

" Easy splits, navigation, search, buffers & tabs
map <Leader>s  :split<CR>
map <Leader>v  :vsplit<CR>
map <C-j>       <C-w>j
map <C-k>       <C-w>k
map <C-h>       <C-w>h
map <C-l>       <C-w>l

map <Leader>y   :nohls<CR>
vmap <Leader>p  :!par<CR>
nmap <Leader>p  vip!par<CR>
nmap <Leader>P  ggVG!par<CR>
map Y           y$

" Copy current file path to system pasteboard
map <Leader>C   :call CopyPathWithLine()<CR>
map <Leader>F   :call CopyClojureNamespace()<CR>

" Edit filetype-specific file
map <Leader>h   :execute "edit " . FiletypeFile()<CR>

autocmd BufWritePre *.js,*.rb,*.py,*.scss,*.md 
      \ call StripTrailingWhitespace()

" Plugins
map <Leader>a :Ack! ""<Left>

" Generic tag creator
nmap <Silent> <Leader>t !ctags -R --exclude=.git --exclude=log ./*<CR>

" map <C-N>         :ClearCtrlPCache<CR>\|:CtrlP<CR>
map <C-N>         :CtrlP<CR>
" map <Leader>N     :ClearCtrlPCache<CR>\|:CtrlP<CR>
map <Leader>N     :CtrlP<CR>
map <Leader>e     :CtrlPBuffer<CR>
map <Leader>n     :NERDTreeToggle<CR>
map <Leader>/     <plug>NERDCommenterToggle
