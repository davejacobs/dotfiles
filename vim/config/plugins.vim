" Plugs.vim - Declarative package management with Vundle

call plug#begin('~/.vim/plugged')

" Navigation
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'EvanDotPro/nerdtree-chmod'
Plug 'rking/ag.vim'
" Plug 'tpope/vim-vinegar'

" General editing
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'kana/vim-textobj-user'

" Code editing
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'tomtom/tcomment_vim'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch'       " Will work with Ack!
Plug 'vim-scripts/matchit.zip'

" Writing
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'

" Status and other things
Plug 'itchyny/lightline.vim'
Plug 'sjl/gundo.vim'

" Network
Plug 'mattn/webapi-vim'         " Needed for gist-vim
Plug 'mattn/gist-vim'

" Languages and frameworks
Plug 'vim-ruby/vim-ruby'
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'kien/rainbow_parentheses.vim'
Plug 'pangloss/vim-javascript'  " This is currently more updated than the above
                                  " (which is a derivative)
Plug 'mxw/vim-jsx'
Plug 'kchmck/vim-coffee-script'
Plug 'othree/html5-syntax.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-haml'
Plug 'cakebaker/scss-syntax.vim'
Plug 'rust-lang/rust.vim'

" Themes
Plug 'daylerees/colour-schemes', { 'rtp': 'vim/' }
Plug 'altercation/vim-colors-solarized'
Plug 'imsizon/wombat.vim'

call plug#end()
