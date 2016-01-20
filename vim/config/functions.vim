" Functions.vim

function! FiletypeFile()
  return expand("~/.vim/ftplugin/") . &ft . ".vim"
endfunction

function! CopyPathWithLine()
  let l:pathWithLine = expand("%").":".line(".")
  echo "Copied: ".l:pathWithLine
  let @* = l:pathWithLine
endfunction

function! StripTrailingWhitespace()
  let save_cursor = getpos(".")
  %s/\s\+$//e
  call setpos('.', save_cursor)
endfunction
