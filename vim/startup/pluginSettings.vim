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
