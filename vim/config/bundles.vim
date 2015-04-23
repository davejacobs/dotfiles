" Bundles.vim - Declarative package management with Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

" TimL
Plugin 'tpope/timl'

" Global plugins
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'tpope/vim-vinegar'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-abolish'
" Will work with Ack!
Plugin 'tpope/vim-dispatch'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-scripts/matchit.zip'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'rizzatti/dash.vim'

" Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" Python
" Plugin 'klen/python-mode'

" Clojure, Haskell, Purescript
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'vim-scripts/paredit.vim'
Plugin 'raichoo/purescript-vim'

" Javascript & HTML5 & CSS
" Plugin 'vim-scripts/vim-javascript'
" This is currently more updated than the above (which is
" a derivative)
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5-syntax.vim'
Plugin 'mattn/emmet-vim'
Plugin 'jsx/jsx.vim'
" Plugin 'mxw/vim-jsx'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-haml'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'davidoc/taskpaper.vim'

" Utilities
Plugin 'tpope/vim-surround'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'tpope/vim-endwise'

" Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'imsizon/wombat.vim'
