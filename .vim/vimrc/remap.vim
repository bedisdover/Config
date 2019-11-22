map <M-Right> <C-W>gt
map <M-Left> <C-W>gT

tnoremap <Esc> <C-W>:hide<CR>

noremap <M-F12> :terminal ++rows=5 <CR>
"map <M-F12> :call OpenTerminal()<CR>
let s:tid = -1
function! OpenTerminal()
  if s:tid != -1
    execute "sp#" s:tid
  else
    let s:tid = term_start('NONE', { "term_rows": 8 })
  endif
endfunction


" nerdtree {{
  noremap <ESC>1 :NERDTreeToggle<cr>
  inoremap <ESC>1 <ESC>:NERDTreeToggle<cr>
" }}
