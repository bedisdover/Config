" coc
command! -nargs=0 Fold :call CocAction('fold')
command! -nargs=0 Format :call CocAction('format')<CR>
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')<CR>

" fzf
command! -nargs=* -bang Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".<q-args>, 1, fzf#vim#with_preview(), <bang>0)
command! -nargs=* -bang RG call s:RipgrepFzf(<q-args>, <bang>0)
function! s:RipgrepFzf(query, fullscreen)
  let idx = strridx(a:query, ' ')
  let options = idx == -1 ? '' : a:query[:idx]
  let query = a:query[idx + 1:]
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s %s || true'
  let initial_command = printf(command_fmt, options, query)
  let reload_command = printf(command_fmt, options, '{q}')
  let spec = {'options': ['--phony', '--query', query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
