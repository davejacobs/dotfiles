" Plugins.vim - Configuration for all global plugins

let g:ctrlp_working_path_mode=0
let g:ctrlp_user_command = {
      \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
      \ },
      \ 'fallback': 'find %s -type f'
      \ }

let g:NERDTreeMinimalUI=1
let g:NERDTreeWinSize=20
let g:NERDTreeDirArrows=1
let g:NERDSpaceDelims=1               " Add a space before comments
let g:NERDTreeChDirMode=2             " Change working directory 
                                      " when appropriate
let g:NERDTreeIgnore = [
      \ 'tags',
      \ 'target',
      \ 'node_modules',
      \ '*\.pyc$'
      \ ]

let g:Powerline_symbols='fancy'

" Actively correct Javascript, do not actively correct HTML
let g:syntastic_mode_map = {
      \ 'mode': 'active',
      \ 'active_filetypes': ['javascript'],
      \ 'passive_filetypes': ['html', 'sass', 'scss', 'scss.css', 'python'] 
      \ }

let g:pymode_lint = 0

au BufNewFile,BufRead *.ejs set filetype=html
