let g:mapleader = ','

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
  noremap <silent> <A-1> :call Toggle()<CR>
  inoremap <silent> <A-1> <ESC>:call Toggle()<CR>
" }}

" gitgutter {{
  let s:cycled = 0
  function! GitGutterNextHunkCycle()
    let line = line('.')
    silent! GitGutterNextHunk
    if line('.') == line
      if s:cycled == 1
        let s:cycled = 0
        1
        GitGutterNextHunk
      else
        let s:cycled = 1
        echo 'no more hunks, go on to wrap around'
      endif
    endif
  endfunction
  nmap <silent> <F7> :call GitGutterNextHunkCycle()<CR>
  nmap <silent> <S-F7> <Plug>(GitGutterPrevHunk)
" }}

" fzf {{
if has('nvim')
  function! FloatingWin()
    let height = float2nr((&lines - 2) * 0.6)
    let row = float2nr((&lines - height) / 2)
    let width = float2nr(&columns * 0.6)
    let col = float2nr((&columns - width) / 2)
    " Border Window
    let border_opts = { 'relative': 'editor', 'row': row - 1, 'col': col - 2, 'width': width + 4, 'height': height + 2, 'style': 'minimal' }
    " Terminal Window
    let opts = { 'relative': 'editor', 'row': row, 'col': col, 'width': width, 'height': height, 'style': 'minimal' }
    let top = "╭" . repeat("─", width + 2) . "╮"
    let mid = "│" . repeat(" ", width + 2) . "│"
    let bot = "╰" . repeat("─", width + 2) . "╯"
    let lines = [top] + repeat([mid], height) + [bot]
    let bbuf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(bbuf, 0, -1, v:true, lines)
    let s:border_win = nvim_open_win(bbuf, v:true, border_opts)
    let win = nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    " Close border window when terminal window close
    autocmd TermClose * ++once :bd! | call nvim_win_close(s:border_win, v:true)
  endfunction

  let $FZF_DEFAULT_OPTS .= ' --reverse'
  let g:fzf_layout = { 'window': 'call FloatingWin()' }

  function! OpenFiles()
    silent call system('git rev-parse')
    if v:shell_error
      Files
    else
      GFiles
    endif
  endfunction
  noremap <silent> <C-P> :call OpenFiles()<CR>
endif
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

  let g:coc_snippet_next = '<tab>'
  inoremap <silent><expr> <TAB>
    \ pumvisible() ? coc#_select_confirm() :
    \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  nmap <silent> <M-j> <Plug>(coc-cursors-word)*
  xmap <silent> <M-j> y/\V<C-r>=escape(@",'/\')<CR><CR>gN<Plug>(coc-cursors-range)gn

  " coc-yank
  nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
" }}
