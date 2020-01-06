" coc
command! -nargs=0 Fold :call CocAction('fold')
command! -nargs=0 Format :call CocAction('format')<CR>
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')<CR>

" fzf
command! -nargs=* -bang RG call s:RipgrepFzf(<q-args>, <bang>0)
function! s:RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
