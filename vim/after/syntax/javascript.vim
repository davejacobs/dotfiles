" Javascript.vim - Load after syntax for conceal to take effect

if has("conceal")
  syntax clear javaScriptFunction
  syntax match javaScriptFunction /\<function\>/ nextgroup=javaScriptFuncName skipwhite conceal cchar=ƒ
  hi link javaScriptFunctionNoParams javaScriptFunction
  hi! link Conceal javaScriptFunction

  set conceallevel=2
endif
