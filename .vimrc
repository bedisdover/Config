call plug#begin()

" Color scheme
Plug 'blueshirts/darcula'

" Edit
" parentheses, brackets, quotes, XML tags, and more
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
" comment stuff out
Plug 'tpope/vim-commentary'
" undotree
Plug 'mbbill/undotree'
" replace text with the contents of a register
Plug 'vim-scripts/ReplaceWithRegister'
" translate between multiline and single-line code
Plug 'AndrewRadev/splitjoin.vim'
" autocomplete quotes, parens, brackets, etc
Plug 'Raimondi/delimitMate'
" cut operation
Plug 'svermeulen/vim-cutlass'

" Browse
" display indention levels
Plug 'Yggdroot/indentLine'
" tree explorer
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" status line & tab line
Plug 'vim-airline/vim-airline'
" fuzzy finder
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" search improve
Plug 'romainl/vim-cool'
" extended % matching for HTML, LaTeX and so on
Plug 'vim-scripts/matchit.zip'
" automatically restore cursor position and folding
Plug 'vim-scripts/restore_view.vim'
" translate
Plug 'voldikss/vim-translator'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" Git
" git wrapper
Plug 'tpope/vim-fugitive'
" git diff in one column
Plug 'airblade/vim-gitgutter'

" Lang
" emmet
Plug 'mattn/emmet-vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'leafgarland/typescript-vim'

" coc.vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-yank', {'do': 'yarn'}
Plug 'neoclide/coc-lists', {'do': 'yarn'}
Plug 'neoclide/coc-highlight', {'do': 'yarn'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn'}
Plug 'neoclide/coc-css', {'do': 'yarn'}
Plug 'neoclide/coc-html', {'do': 'yarn'}
Plug 'neoclide/coc-json', {'do': 'yarn'}
Plug 'neoclide/coc-tslint-plugin', {'do': 'yarn'}
Plug 'neoclide/coc-snippets', {'do': 'yarn'}
"Plug 'neoclide/vim-jsx-improve'

call plug#end()

for s:path in split(glob('~/.vim/vimrc/*.vim'), "\n")
  exe 'source ' . s:path
endfor

