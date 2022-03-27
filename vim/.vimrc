call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-surround'


Plug 'mattn/emmet-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'tomtom/tcomment_vim'

Plug 'morhetz/gruvbox'



" All plugins must be placed before this line
call plug#end()

source ~/.dotfiles/vim/startup/compileAndRun.vim
source ~/.dotfiles/vim/startup/settings.vim
source ~/.dotfiles/vim/startup/mappings.vim
source ~/.dotfiles/vim/startup/pluginSettings.vim
