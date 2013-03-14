set lispwords+=deftest,testing,defproject,sql/select,sql/insert,up,down,ANY,GET,POST,PUT,DELETE,OPTIONS

" let vimclojure#SplitPos='right'
let vimclojure#SplitPos='bottom'
let vimclojure#SplitSize=10
let vimclojure#HighlightBuiltins=1
let vimclojure#ParenRainbow=1
let vimclojure#FuzzyIndent=1
let vimclojure#FuzzyIndentPatterns .= ",deftest,testing,defproject"
let vimclojure#WantNailgun=1

function! ToggleNailgun()
  if g:vimclojure#WantNailgun == 0
    let g:vimclojure#WantNailgun = 1
  else
    let g:vimclojure#WantNailgun = 0
  endif
endfunction

map <leader>v :call ToggleNailgun()<CR> 
