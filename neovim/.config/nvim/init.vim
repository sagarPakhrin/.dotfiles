call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'tomtom/tcomment_vim'

Plug 'morhetz/gruvbox'


call plug#end()

set t_Co=256
set nocompatible
set mouse=a

syntax enable
set splitbelow
set splitright
set incsearch

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

" set pastetoggle=<F10>
set cursorline "highlights the current line
 
"Indentation guide
" set cursorcolumn

autocmd BufNewFile,BufRead *.blade.php set ft=html


"Mappings for jk
inoremap jk <esc>

"Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Open and reload vimrc
nnoremap <leader>ev :vsp ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"Mappings for tabs
nnoremap tn :tabnew<space>
nnoremap tk :tabnext<cr>
nnoremap tj :tabprev<cr>

"Start NERDTree 
nnoremap nt :NERDTree<cr>

inoremap j; <esc>A;

"Mappings to go to defination(Required YouCompleteMe )

"Mappings for GitBlame
nnoremap <leader>gs :G<CR>
nnoremap <leader>gj :diffget //3<CR>
nnoremap <leader>gf :diffget //2<CR>

"For Colors

set background=dark
colorscheme gruvbox

"For fzf 
noremap <Space>h :Hist<CR>
noremap <Space>f :Files<CR>
noremap <Space>l :Lines<CR>
noremap <Space>bl :BLines<CR>

" Gif config
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

"Easymotion
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion"

"NERDTree
"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1
"let NERDTreeHijackNetrw = 1

