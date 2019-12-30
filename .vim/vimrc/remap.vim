let g:mapleader = ','
" function! HandleTab()
"   if emmet#isExpandable()
"     return emmet#expandAbbrIntelligent('\<TAB>')
"   endif
" endfunction

" edit
nnoremap xx dd
nnoremap X D
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>

inoremap <silent><expr> <TAB>
  \ pumvisible() ? coc#_select_confirm() :
  \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

" vim-translate-me {{
  nmap <silent> <Leader>w <Plug>TranslateW
  vmap <silent> <Leader>w <Plug>TranslateWV
" }}

" nerdtree {{
  function! Toggle()
    if exists("g:NERDTree") && g:NERDTree.IsOpen()
      NERDTreeClose
    elseif filereadable(expand('%'))
      NERDTreeFind
    else
      NERDTree
    endif
  endfunction
  noremap <silent> <ESC>1 :call Toggle()<CR>
  inoremap <silent> <ESC>1 <ESC>:call Toggle()<CR>
" }}

" emmet-vim {{
  " let g:user_emmet_expandabbr_key='<Tab>'
  " imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
" }}

" coc.vim {{
  nmap <silent> <S-F2> <Plug>(coc-diagnostic-prev)
  nmap <silent> <F2> <Plug>(coc-diagnostic-next)

  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  nnoremap <silent> K :call <SID>show_documentation()<CR>
  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    else
      call CocAction('doHover')
    endif
  endfunction

  " Remap for format selected region
  xmap <leader>f  <Plug>(coc-format-selected)
  nmap <leader>f  <Plug>(coc-format-selected)

  nmap <silent> <C-d> <Plug>(coc-range-select)
  xmap <silent> <C-d> <Plug>(coc-range-select)

  " nmap <silent> <C-S-L> :call CocAction('format')<CR>
  " nmap <silent> <C-S-O> :call CocAction('runCommand', 'editor.action.organizeImport')<CR>

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  nmap <silent> <C-j> <Plug>(coc-cursors-word)*
  xmap <silent> <C-j> y/\V<C-r>=escape(@",'/\')<CR><CR>gN<Plug>(coc-cursors-range)gn
" }}
