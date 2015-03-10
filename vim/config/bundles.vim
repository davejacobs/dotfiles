" Bundles.vim - Declarative package management with Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" TimL
Bundle 'tpope/timl'

" Global plugins
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
" Bundle 'tpope/vim-vinegar'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-abolish'
" Will work with Ack!
Bundle 'tpope/vim-dispatch'
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/matchit.zip'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/syntastic'
Bundle 'sjl/gundo.vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'rizzatti/dash.vim'
Bundle 'tpope/vim-abolish'

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'

" Python
" Bundle 'klen/python-mode'

" Clojure, Haskell, Purescript
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'vim-scripts/paredit.vim'
Bundle 'raichoo/purescript-vim'

" Javascript & HTML5 & CSS
" Bundle 'vim-scripts/vim-javascript'
" This is currently more updated than the above (which is
" a derivative)
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/html5-syntax.vim'
Bundle 'mattn/emmet-vim'
Bundle 'jsx/jsx.vim'
" Bundle 'mxw/vim-jsx'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-haml'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'davidoc/taskpaper.vim'

" Utilities
Bundle 'tpope/vim-surround'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'tpope/vim-endwise'

" Themes
Bundle 'altercation/vim-colors-solarized'
Bundle 'imsizon/wombat.vim'
