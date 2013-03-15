" Bundles.vim - Declarative package management with Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Global plugins
Bundle 'wincent/Command-T'
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
Bundle 'tpope/vim-classpath'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'vim-scripts/paredit.vim'

" Javascript & HTML5 & CSS
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/html5-syntax.vim'
Bundle 'tpope/vim-haml'
Bundle 'nono/vim-handlebars'
Bundle 'tpope/vim-markdown'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'groenewege/vim-less'

" Servers & databases
Bundle 'vim-scripts/nginx.vim'
Bundle 'vim-scripts/dbext.vim'
Bundle 'vim-scripts/csv.vim'

" Utilities
Bundle 'tpope/vim-surround'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'tpope/vim-endwise'
Bundle 'vim-scripts/AnsiEsc.vim'

" Themes
Bundle 'altercation/vim-colors-solarized'
Bundle 'imsizon/wombat.vim'
