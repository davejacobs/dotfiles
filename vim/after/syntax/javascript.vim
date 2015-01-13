" Javascript.vim - Load after syntax for conceal to take effect

let g:javascript_conceal = 2

if has("conceal")
  syntax clear javascript

  " First syntax
  syntax match javaScriptFunction /\<function\>/ nextgroup=javaScriptFuncName skipwhite conceal cchar=ƒ
  hi link javaScriptFunctionNoParams javaScriptFunction
  hi! link Conceal javaScriptFunction

  " Second syntax
  syntax match jsFunction /\<function\>/ nextgroup=jsFuncName skipwhite conceal cchar=ƒ
  hi link jsFunctionNoParams jsFunction
  hi! link Conceal jsFunction

  set conceallevel=2
endif
