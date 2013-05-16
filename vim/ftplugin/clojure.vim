" Clojure.vim

autocmd BufEnter *.clj RainbowParenthesesActivate
autocmd BufEnter *.clj RainbowParenthesesLoadRound
autocmd BufEnter *.clj RainbowParenthesesLoadSquare
autocmd BufEnter *.clj RainbowParenthesesLoadBraces

" How many lines the parser scans for matching delimiters 
let g:clojure_maxlines = 150

" Align strings the pretty way
let g:clojure_align_multiline_strings = 0

" Indentation configuration
let g:clojure_fuzzy_indent_patterns = [
      \ '^with',
      \ '^def',
      \ '^let',
      \ '^select',
      \ '^insert',
      \ '^create',
      \ '^delete',
      \ '^ANY',
      \ '^GET',
      \ '^POST',
      \ '^PUT',
      \ '^DELETE',
      \ '^OPTIONS',
      \ '^table',
      \ '^drop',
      \ '^fact',
      \ '^->'
      \ ]
