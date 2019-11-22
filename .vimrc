call plug#begin()

Plug 'mattn/emmet-vim'
" autocomplete quotes, parens, brackets, etc
Plug 'Raimondi/delimitMate'
" comment stuff out
Plug 'tpope/vim-commentary'
" status line & tab line
Plug 'vim-airline/vim-airline'
" translate
Plug 'voldikss/vim-translate-me'
" git wrapper
Plug 'tpope/vim-fugitive'
" parentheses, brackets, quotes, XML tags, and more
Plug 'tpope/vim-surround'
" search improve
Plug 'romainl/vim-cool'
" undotree
Plug 'mbbill/undotree'
Plug 'heavenshell/vim-jsdoc'
" color scheme
Plug 'blueshirts/darcula'
" display indention levels
Plug 'Yggdroot/indentLine'
" tree explorer
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" coc.vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/vim-jsx-improve'

call plug#end()

for s:path in split(glob('~/.vim/vimrc/*.vim'), "\n")
  exe 'source ' . s:path
endfor

