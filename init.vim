colorscheme nord

" display relative line number 
set rnu nu

" Use plugins for filetypes 
filetype plugin indent on

" activate syntax highlighting
syntax on

" make Y consistent with C and D.
nnoremap Y y$

" set tabs to 4 spaces
set expandtab
set shiftwidth=4
set tabstop=4

" smart autoindenting when starting a new line
set smartindent

" remap Tab and Shift-Tab to buffer next and buffer previous
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>

let g:localvimrc_whitelist=''
let g:localvimrc_sandbox = 0

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

set statusline=..\ %F\ ..
set statusline+=%=
set statusline+=..\ %l/%L\ ..


" Undo file
" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=/home/niamor/.config/nvim/undo
