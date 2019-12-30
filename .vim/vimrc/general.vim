" General options {{
syntax on
set termguicolors
" set term=xterm-256color
set lazyredraw
set hidden " allow buffer switch without saving
set history=2000
set pumheight=15
set wildmenu
set signcolumn=yes
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set backspace=2
set autowrite
set autoread
set hlsearch
set incsearch
set regexpengine=2
set fileencodings=utf-8,gbk,ucs-bom,cp936
set termencoding=utf-8
set encoding=utf-8
set mousehide
set mouse=a
set novisualbell
set nobackup
set nowritebackup
set noimdisable
set noswapfile
set undofile
set undodir=~/.undodir
set fileformats=unix,dos
set display+=lastline
set formatoptions+=j
set formatoptions+=o
set diffopt=vertical
set path+=**
set tags+=gems.tags,stdlib.tags
set shortmess=aFc
set cmdheight=2
set showcmd
set sessionoptions+=winsize
set sessionoptions+=resize
set sessionoptions-=blank
set sessionoptions+=localoptions
set sessionoptions+=globals
set viewoptions=cursor,folds,slash,unix
set ttimeout
set ttimeoutlen=100
set tabpagemax=10
set scrolloff=3
set list
set listchars=tab:›\ ,trail:~
set wildignore+=*.so,*~,*/.git/*,*/.svn/*,*/.DS_Store,*/tmp/*
set keywordprg=
set showtabline=1
set laststatus=2
set noshowmode
set updatetime=300
set synmaxcol=300
" Formatting
set smarttab
set smartcase
set ignorecase
set shiftwidth=2
set tabstop=2
set expandtab
set shiftround
set autoindent
set wrap
set guioptions-=r
set number
set relativenumber
set grepprg=rg\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m
set title
set wildignorecase
set noruler
set showbreak=↪
set splitbelow
set splitright
set background=dark
colorscheme darcula
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set cursorline

" folding
set foldmethod=syntax
set foldlevelstart=99
" syn region foldImports start="import" end=/import.*\sfrom\s('|").*\1\n$/ fold keepend
" }}

" highlighting {{
hi CursorLine guibg=#3a3a3a
hi CursorLineNr ctermbg=NONE guifg=NONE guibg=NONE
hi FoldColumn guifg=#8e9292 guibg=#2b2b2b

hi Special guifg=#cc7832
hi tsxAttrib guifg=#999999

hi typescriptTypeReference guifg=#507874
hi! link typescriptTypeParameter typescriptTypeReference
hi! link typescriptTypeArguments typescriptTypeReference
" hi typescriptPredefinedType guifg=#cc7832
hi typescriptCall guifg=#a9b7c6
hi! link typescriptBOMWindowProp typescriptCall
hi typescriptObjectLabel guifg=#9a60a8
hi! link typescriptArrowFuncArg Normal
" hi typescriptObjectLiteral guifg=#9a60a8
" }}


" fix tmux color {{
if exists('$TMUX')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
" }}
