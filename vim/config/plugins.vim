" Plugs.vim - Declarative package management with Vundle

call plug#begin('~/.vim/plugged')

" Themes
Plug 'daylerees/colour-schemes', { 'rtp': 'vim/' }
Plug 'altercation/vim-colors-solarized'
Plug 'imsizon/wombat.vim'
Plug 'herrbischoff/cobalt2.vim'

" Navigation, status, undo
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'EvanDotPro/nerdtree-chmod', { 'on': 'NERDTreeToggle' }
Plug 'rking/ag.vim', { 'on': 'Ag' }
Plug 'itchyny/lightline.vim'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
" Plug 'tpope/vim-vinegar'

" Git
Plug 'tpope/vim-fugitive'
if v:version >= 703
  Plug 'mhinz/vim-signify'
endif

" General editing
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-dispatch'
Plug 'henrik/vim-qargs'

" Writing
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'

" Code editing
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-endwise'
Plug 'vim-scripts/matchit.zip'

" Network
Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim'

" Languages and frameworks
Plug 'vim-ruby/vim-ruby'
Plug 'hynek/vim-python-pep8-indent'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'guns/vim-clojure-static'
Plug 'kien/rainbow_parentheses.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vim-scripts/SQLUtilities' | Plug 'vim-scripts/Align'
Plug 'kchmck/vim-coffee-script'
Plug 'othree/html5-syntax.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-haml'
Plug 'cakebaker/scss-syntax.vim'
Plug 'rust-lang/rust.vim'

call plug#end()
