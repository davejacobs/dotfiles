if has("conceal")
  " remove the keywords. we'll re-add them below
  syntax clear javaScriptFunction

  " syntax match javaScriptFunction /\<function\>/ nextgroup=javaScriptFuncName skipwhite conceal cchar=𝑓
  syntax match javaScriptFunction /\<function\>/ nextgroup=javaScriptFuncName skipwhite conceal cchar=ƒ
 
  " syntax match javaScriptFunction /\<function\>/ nextgroup=javaScriptFuncName skipwhite conceal cchar=λ
  " syntax match javaScriptFunctionNoParams /function()/ conceal cchar=λ

  hi link javaScriptFunctionNoParams javaScriptFunction
  hi! link Conceal javaScriptFunction

  set conceallevel=2
endif
