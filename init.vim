""" load vimplug
call plug#begin('~/.vim/plugged')
  Plug 'pangloss/vim-javascript'
  Plug 'itchyny/lightline.vim'
  Plug 'itchyny/vim-gitbranch'
  Plug 'szw/vim-maximizer'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim', { 'do': 'TSUpdate' }
  Plug 'airblade/vim-gitgutter'
  Plug 'nvim-lua/completion-nvim'
  Plug 'dense-analysis/ale'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'David-Kunz/markid'
  Plug 'Exafunction/codeium.vim'
call plug#end()
"
""" default options
" display completion and show popup even if one element is available
" (menuone), no automatic insert (noinsert), no automatic select (noselect)
set completeopt=menuone,noinsert,noselect
" enable mouse support
set mouse=a
" set new vertical window on right of current one while splitting
set splitright
" set new horizontal window below of current one while splitting
set splitbelow
" replace <Tab> by appropriate number of spaces
set expandtab
" set <Tab> to 2 spaces
set tabstop=2
" set the number of spaces for (auto)indent
set shiftwidth=2
" smart autoindenting when starting a new line
set smartindent
" set absolute and relative line numbers
set relativenumber number
" make search insensitive...
set ignorecase
" ... unless using uppercases
set smartcase
" show the matchs for search while typing
set incsearch
" set diff in vertical split
set diffopt+=vertical
" show hidden files
set hidden
" do not make a backup before write
set nobackup
set nowritebackup
" set number of command-line to 1
set cmdheight=1
" suppress some messages
set shortmess+=c
" show signs in number column
set signcolumn=auto
" set the time before writting to swap file to 750ms
set updatetime=750
" enable filetype recognition for plugins and indentation
filetype plugin indent on
" activate syntax highlighting
syntax on
" make Y consistent with C and D.
nnoremap Y y$
" set leader key to space
let mapleader = " "
" enable termguicolors
if (has("termguicolors"))
  set termguicolors
endif
" remove the banner from the file explorer
let g:netrw_banner=0
" set background to transparent
highlight Normal guibg=none
highlight NonText guibg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none

""" Some remaps
nnoremap <leader>v :e $MYVIMRC<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <leader>d :bdelete<CR>

""" itchyny/lightline.vim and itchyny/vim-gitbranch conf
let g:lightline = {
      \ 'active': {
      \ 'left': [ [ 'mode', 'paste' ],
      \           [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

""" szw/vim-maximizer conf
nnoremap <leader>m :MaximizerToggle!<CR>

""" junegunn/fzf.vim
nnoremap <leader><space> :FZF<CR>

let g:localvimrc_whitelist=''
let g:localvimrc_sandbox = 0

" change color of the current line to easily find the cursor
set cursorline

autocmd WinEnter,BufEnter,BufWinEnter * set cursorline
autocmd WinLeave,BufLeave,BufWinLeave * set nocursorline

highlight StatusLine cterm=underline ctermfg=8 ctermbg=None
highlight StatusLineNC cterm=underline ctermfg=8 ctermbg=None
highlight VertSplit cterm=None ctermfg=8 ctermbg=None
highlight LineNr ctermfg=8 ctermbg=None
highlight LineNrAbove ctermfg=8 ctermbg=None
highlight LineNrBelow ctermfg=8 ctermbg=None
highlight FoldColumn ctermfg=8 ctermbg=None
highlight SignColumn ctermfg=8 ctermbg=None
highlight Folded cterm=bold ctermfg=2 ctermbg=None
hi CursorLine guifg=NONE gui=NONE term=NONE cterm=NONE

" Undo file
" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=$HOME/.config/nvim/undo

