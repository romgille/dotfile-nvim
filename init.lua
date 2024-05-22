vim.cmd('colorscheme desert')
local vim = vim
local Plug = vim.fn['plug#']

-- load vimplug
vim.call('plug#begin')
  Plug('pangloss/vim-javascript')
  Plug('itchyny/lightline.vim')
  Plug('itchyny/vim-gitbranch')
  Plug('szw/vim-maximizer')
  Plug('christoomey/vim-tmux-navigator')
  Plug('junegunn/fzf', { ['dir'] = '~/.fzf', ['do'] = './install --all' })
  Plug('junegunn/fzf.vim', { ['do'] = 'TSUpdate' })
  Plug('airblade/vim-gitgutter')
  Plug('nvim-lua/completion-nvim')
  Plug('dense-analysis/ale')
  Plug('nvim-treesitter/nvim-treesitter')
  Plug('David-Kunz/markid')
  Plug('nelsyeung/twig.vim')
  Plug('neovim/nvim-lspconfig')
  Plug('williamboman/mason.nvim')
  Plug('tpope/vim-commentary')
vim.call('plug#end')

-- default options
-- display completion and show popup even if one element is available
-- (menuone), no automatic insert (noinsert), no automatic select (noselect)
vim.cmd('set completeopt=menuone,noinsert,noselect')
-- enable mouse support
vim.cmd('set mouse=a')
-- set new vertical window on right of current one while splitting
vim.cmd('set splitright')
-- set new horizontal window below of current one while splitting
vim.cmd('set splitbelow')
-- replace <Tab> by appropriate number of spaces
vim.cmd('set expandtab')
-- set <Tab> to 2 spaces
vim.cmd('set tabstop=2')
-- set the number of spaces for (auto)indent
vim.cmd('set shiftwidth=2')
-- smart autoindenting when starting a new line
vim.cmd('set smartindent')
-- set absolute and relative line numbers
vim.cmd('set relativenumber number')
-- make search insensitive...
vim.cmd('set ignorecase')
-- ... unless using uppercases
vim.cmd('set smartcase')
-- show the matchs for search while typing
vim.cmd('set incsearch')
-- set diff in vertical split
vim.cmd('set diffopt+=vertical')
-- show hidden files
vim.cmd('set hidden')
-- do not make a backup before write
vim.cmd('set nobackup')
vim.cmd('set nowritebackup')
-- set number of command-line to 1
vim.cmd('set cmdheight=1')
-- suppress some messages
vim.cmd('set shortmess+=c')
-- show signs in number column
vim.cmd('set signcolumn=auto')
-- set the time before writting to swap file to 750ms
vim.cmd('set updatetime=750')
-- enable filetype recognition for plugins and indentation
vim.cmd('filetype plugin indent on')
-- make Y consistent with C and D.
vim.cmd('nnoremap Y y$')
-- set leader key to space
vim.cmd('let mapleader = " "')
-- enable termguicolors
vim.cmd('set termguicolors')
-- " activate syntax highlighting
vim.cmd('syntax on')
-- " remove the banner from the file explorer
vim.cmd('let g:netrw_banner=0')
-- " set background to transparent
vim.cmd('highlight Normal guibg=none')
vim.cmd('highlight NonText guibg=none')
vim.cmd('highlight Normal ctermbg=none')
vim.cmd('highlight NonText ctermbg=none')
 
-- """ Some remaps
vim.cmd('nnoremap <leader>v :e $MYVIMRC<CR>')
vim.cmd('nnoremap <Tab> :bnext<CR>')
vim.cmd('nnoremap <S-Tab> :bprevious<CR>')
vim.cmd('nnoremap <leader>d :bdelete<CR>')
 
-- """ itchyny/lightline.vim and itchyny/vim-gitbranch conf
vim.g.lightline = {
  active = {
    left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified', } },
  },
  component_function = {
    gitbranch = 'gitbranch#name'
  },
}

-- """ szw/vim-maximizer conf
vim.cmd('nnoremap <leader>m :MaximizerToggle!<CR>')
 
-- """ junegunn/fzf.vim
vim.cmd('nnoremap <leader><space> :FZF<CR>')
 
vim.cmd('let g:localvimrc_whitelist=""')
vim.cmd('let g:localvimrc_sandbox = 0')
 
-- " Undo file
-- " tell it to use an undo file
vim.cmd('set undofile')
-- " set a directory to store the undo history
vim.cmd('set undodir=$HOME/.config/nvim/undo')

require("mason").setup()
