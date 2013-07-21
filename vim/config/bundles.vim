" Bundles.vim - Declarative package management with Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Global plugins
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/syntastic'
Bundle 'sjl/gundo.vim'

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'

" Clojure
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'vim-scripts/paredit.vim'

" Javascript & HTML5 & CSS
Bundle 'vim-scripts/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/html5-syntax.vim'
Bundle 'nono/vim-handlebars'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-haml'
Bundle 'cakebaker/scss-syntax.vim'

" Utilities
Bundle 'tpope/vim-surround'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'tpope/vim-endwise'

" Themes
Bundle 'altercation/vim-colors-solarized'
Bundle 'imsizon/wombat.vim'
