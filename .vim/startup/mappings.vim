"Mappings for jk
inoremap jk <esc>

"Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Open and reload vimrc
nnoremap <leader>ev :vsp ~/.vim/vimrc<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"Mappings for tabs
nnoremap tn :tabnew<space>
nnoremap tk :tabnext<cr>
nnoremap tj :tabprev<cr>

"Start NERDTree 
nnoremap nt :NERDTree<cr>

inoremap j; <esc>A;
