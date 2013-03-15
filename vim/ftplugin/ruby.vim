" Ruby.vim

" Build tags for Ruby, including libraries in current Rbenv gemset
map <Leader>rt :silent !ctags -R --exclude=.git --exclude=log ./* $(rbenv which gem)/../../gemsets/$(rbenv gemset active)/*<CR>
