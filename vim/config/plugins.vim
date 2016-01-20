" Plugins.vim - Declarative package management with Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'

" Navigation
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'EvanDotPro/nerdtree-chmod'
Plugin 'rking/ag.vim'
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
Plugin 'junegunn/goyo.vim'
Plugin 'amix/vim-zenroom2'

" Status and other things
Plugin 'itchyny/lightline.vim'
Plugin 'sjl/gundo.vim'

" Network
Plugin 'mattn/webapi-vim'         " Needed for gist-vim
Plugin 'mattn/gist-vim'

" Languages and frameworks
Plugin 'vim-ruby/vim-ruby'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'pangloss/vim-javascript'  " This is currently more updated than the above
                                  " (which is a derivative)
Plugin 'mxw/vim-jsx'
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5-syntax.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-haml'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'rust-lang/rust.vim'

" Themes
Plugin 'daylerees/colour-schemes', { 'rtp': 'vim/' }
Plugin 'altercation/vim-colors-solarized'
Plugin 'imsizon/wombat.vim'

call vundle#end()
