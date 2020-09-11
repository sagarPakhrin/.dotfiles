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

"Mappings to go to defination(Required YouCompleteMe )
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
nnoremap <silent> <Leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <silent> <Leader>gi :YcmCompleter GoToImplementation<CR>
nnoremap <silent> <Leader>rr :YcmCompleter RefactorRename<space>

"Mappings for GitBlame
nnoremap <leader>gs :G<CR>
nnoremap <leader>gj :diffget //3<CR>
nnoremap <leader>gf :diffget //2<CR>
