" Plugins.vim - Declarative package management with Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'

" Navigation
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'EvanDotPro/nerdtree-chmod'
Plugin 'mileszs/ack.vim'
" Plugin 'tpope/vim-vinegar'

" General editing
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'kana/vim-textobj-user'

" Code editing
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tcomment_vim'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'       " Will work with Ack!
Plugin 'vim-scripts/matchit.zip'

" Writing
Plugin 'amix/vim-zenroom2'

" Status and other things
Plugin 'bling/vim-airline'
Plugin 'sjl/gundo.vim'

" Network
Plugin 'mattn/webapi-vim'         " Needed for gist-vim
Plugin 'mattn/gist-vim'
" Plugin 'rizzatti/dash.vim'

" Languages and frameworks
Plugin 'vim-ruby/vim-ruby'

Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'vim-scripts/paredit.vim'
" Plugin 'raichoo/purescript-vim'
" Plugin 'vim-scripts/vim-javascript' 
Plugin 'pangloss/vim-javascript'  " This is currently more updated than the above
                                  " (which is a derivative)
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5-syntax.vim'
Plugin 'mattn/emmet-vim'
Plugin 'jsx/jsx.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-haml'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/timl'

" Productivity
Plugin 'davidoc/taskpaper.vim'

" Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'imsizon/wombat.vim'

call vundle#end()
