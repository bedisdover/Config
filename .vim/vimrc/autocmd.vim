" return to last edit position when opening files
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   execute "normal! g`\"" |
  \ endif

" support json with comment
autocmd FileType json syntax match Comment +\/\/.\+$+

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx | set foldmethod=syntax

" nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
