" Plugins.vim - Configuration for all global plugins

let g:ctrlp_working_path_mode=0

let g:NERDTreeMinimalUI=1
let g:NERDTreeWinSize=20
let g:NERDTreeDirArrows=1
let g:NERDSpaceDelims=1               " Add a space before comments
let g:NERDTreeChDirMode=2             " Change working directory 
                                      " when appropriate
let g:NERDTreeIgnore = [
      \ 'tags',
      \ 'target',
      \ 'node_modules'
      \ ]

let g:Powerline_symbols='fancy'

" Actively correct Javascript, do not actively correct HTML
let g:syntastic_mode_map = {
      \ 'mode': 'active',
      \ 'active_filetypes': ['javascript'],
      \ 'passive_filetypes': ['html'] 
      \ }
