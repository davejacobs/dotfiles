" Keybindings.vim - All non-language-specific keybindings

let mapleader=','
let maplocalleader=';'

" kj - the easy way to escape inse;t mode 
inoremap kj <Esc>

" Leader/z - the easy way to fold one level
noremap <Leader>z zMzr

" Run == formatting on the entire file and return to original position
noremap <Leader>= gg=G``

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

map <Leader>bl  :buffers<CR>
map <Leader>bn  :bn<CR>
map <Leader>bp  :bp<CR>
map <Leader>b   :b#<CR>

function! FiletypeFile()
  return expand("~/.vim/ftplugin/") . &ft . ".vim"
endfunction

function! CopyPathWithLine()
  let l:pathWithLine = expand("%").":".line(".")
  echo "Copied: ".l:pathWithLine
  let @* = l:pathWithLine
endfunction

function! ExtractClojureNamespace(path)
  let l:withoutExt = substitute(a:path, ".clj", "", "")
  let l:underscoreToDash = substitute(l:withoutExt, "_", "-", "g")
  let l:parts = split(l:underscoreToDash, "/")
  let l:withoutParents = l:parts[1:]
  return join(l:withoutParents, ".")
endfunction

function! CopyClojureNamespace()
  let l:transformed = ExtractClojureNamespace(expand("%"))
  echo "Copied: ".l:transformed
  let @* = l:transformed
endfunction

" Copy current file path to system pasteboard
map <leader>C :call CopyPathWithLine()<CR>
map <leader>F :call CopyClojureNamespace()<CR>

" Edit filetype-specific file
map <Leader>h :execute "edit " . FiletypeFile()<CR>

function! StripTrailingWhitespace()
  let save_cursor = getpos(".")
  %s/\s\+$//e
  call setpos('.', save_cursor)
endfunction

autocmd BufWritePre *.js,*.rb,*.py,*.scss,*.md call StripTrailingWhitespace()

" Plugins
map <Leader>a :Ack ""<Left>

" Generic tag creator
map <Leader>t :silent !ctags -R --exclude=.git --exclude=log ./*<CR>

" Build tags for Ruby, including libraries in current Rbenv gemset
map <Leader>rt :silent !ctags -R --exclude=.git --exclude=log ./* $(rbenv which gem)/../../gemsets/$(rbenv gemset active)/*<CR>

map <C-N> :CommandTFlush<CR>:CommandT<CR>
map <Leader>N :CommandTFlush<CR>:CommandT<CR>
" map <Leader>e :CommandTBuffer<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>/ <plug>NERDCommenterToggle
