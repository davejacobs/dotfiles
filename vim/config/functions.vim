" Functions.vim

function! FiletypeFile()
  return expand("~/.vim/ftplugin/") . &ft . ".vim"
endfunction

function! CopyPathWithLine()
  let l:pathWithLine = expand("%").":".line(".")
  echo "Copied: ".l:pathWithLine
  let @* = l:pathWithLine
endfunction

function! ExtractClojureNamespace(path)
  let l:withoutExt = substitute(a:path, ".clj", "", "")
  let l:underscoreToDash = substitute(l:withoutExt, "_", "-", "g")
  let l:parts = split(l:underscoreToDash, "/")
  let l:withoutParents = l:parts[1:]
  return join(l:withoutParents, ".")
endfunction

function! CopyClojureNamespace()
  let l:transformed = ExtractClojureNamespace(expand("%"))
  echo "Copied: ".l:transformed
  let @* = l:transformed
endfunction
