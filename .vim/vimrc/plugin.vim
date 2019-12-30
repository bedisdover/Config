" LeaderF {{
  let g:Lf_WindowPosition = 'popup'
  let g:Lf_PreviewInPopup = 1
  let g:Lf_PreviewCode = 1
  " let g:Lf_PreviewResult = { 'Rg': 1 }
  let g:Lf_ShortcutF = '<C-P>'
  let g:Lf_StlSeparator = { 'left': '', 'right': '' }
" }}

" split join {{
  let g:splitjoin_trailing_comma = 1
" }}

" vim translate me {{
  let g:translator_default_engines=['google']
" }}

" delimitMate {{
  let delimitMate_expand_cr=1
  let delimitMate_expand_space=1
" }}

" vim airline {{
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamemod = ':t'
" }}

" vim-colors-solarized {{
  let g:solarized_termcolors=256
" }}

" NerdTree {{
  let NERDTreeShowHidden=1
" }}

" coc {{
  let g:coc_snippet_next = '<tab>'
" }}

" ctrlp {{
  let g:ctrlp_cmd = 'CtrlPMixed'
  let g:ctrlp_open_multiple_files = 'tj'
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" }}
