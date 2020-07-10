set t_Co=256
set nocompatible
set mouse=a

syntax enable
set splitbelow
set splitright
set incsearch
"set hlsearch

set number
set relativenumber
set showcmd

set nowrap

filetype indent on
set tabstop=2
set shiftwidth=2
set expandtab

"Preventing swap files
set nobackup
set nowritebackup
set noswapfile

set pastetoggle=<F10>
set cursorline "highlights the current line

"Indentation guide
set cursorcolumn

autocmd BufNewFile,BufRead *.blade.php set ft=html
