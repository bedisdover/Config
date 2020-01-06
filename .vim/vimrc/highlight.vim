function! s:viewHighlight()
  echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
  \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
  \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"
endfunction
noremap <silent> <leader>h :call <SID>viewHighlight()<CR>

" basic
hi CursorLine guibg=#3a3a3a
hi CursorLineNr ctermbg=NONE guifg=NONE guibg=NONE
hi FoldColumn guifg=#8e9292 guibg=#2b2b2b

hi Special guifg=#cc7832
hi Function guifg=#FFC66D

hi typescriptTypeReference guifg=#507874
hi! link typescriptTypeParameter typescriptTypeReference
hi! link typescriptTypeArguments typescriptTypeReference
hi typescriptPredefinedType guifg=#cc7832
hi typescriptCall guifg=#a9b7c6
hi! link typescriptBOMWindowProp typescriptCall
hi typescriptObjectLabel guifg=#9a60a8
hi! link typescriptArrowFuncArg Normal

" tsx
hi tsxTagName guifg=#E8BF6A
hi! link tsxCloseString tsxTagName
hi! link tsxCloseTag tsxTagName
hi! link tsxAttributeBraces Normal
hi! link tsxEqual Normal
hi tsxAttrib guifg=#BABABA
hi tsxAttrib guifg=#999999
hi tsxTypeBraces guifg=#999999
hi tsxTypes guifg=#666666
hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi ApolloGraphQL guifg=#CB886B
hi Events ctermfg=204 guifg=#56B6C2
hi! link ReduxKeywords Normal
" hi! link ReduxHooksKeywords Function
hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66

" hi typescriptObjectLiteral guifg=#9a60a8
