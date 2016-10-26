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
      \ '^tags$',
      \ 'target',
      \ 'node_modules',
      \ '*\.pyc$'
      \ ]

" Actively correct Javascript, do not actively correct HTML
let g:syntastic_mode_map = {
      \ 'mode': 'active',
      \ 'active_filetypes': ['javascript'],
      \ 'passive_filetypes': ['html', 'sass', 'scss', 'scss.css', 'python'] 
      \ }

let g:syntastic_javascript_checkers = ['eslint']
let g:jsx_ext_required = 0
let g:pymode_lint = 0

call tcomment#DefineType('js', '// %s')

let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_show_privates = 1
let g:gist_post_private = 1

let g:sqlutil_align_comma = 1
let g:sqlutil_align_first_word = 1

autocmd FileType html,css,javascript.jsx EmmetInstall
