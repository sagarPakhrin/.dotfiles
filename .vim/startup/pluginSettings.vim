"For Colors
set background=dark
colorscheme solarized8


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

"YCM
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

"Ycm with pipenv 
"https://www.youtube.com/watch?v=yu9MQfzfe_I
let pipenv_venv_path = system('pipenv --venv')
if shell_error ==0
    let venv_path = substitute(pipenv_venv_path, '\n','','')
    let g:ycm_python_binary_path = venv_path . "/bin/python"
else
    let g:ycm_python_binary_path = 'python3'
endif


"For emmit.vim
let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
            \  'php' : {
            \    'extends' : 'html',
            \    'filters' : 'c',
            \  },
            \  'xml' : {
            \    'extends' : 'html',
            \  },
            \  'scss' : {
            \    'extends' : 'css',
            \  },
            \  'haml' : {
            \    'extends' : 'html',
            \  },
            \  'jsx' : {
            \    'extends' : 'html',
            \  },
            \}


"For Untislips
let g:UltiSnipsExpandTrigger="<nop>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:ulti_expand_or_jump_res = 0

"For UltiSnips and YCM to work together

function! ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
