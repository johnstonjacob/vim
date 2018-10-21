set nocompatible

filetype off
syntax on

" use system clipboard
set clipboard=unnamed

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set backspace=2

" save files opened in readonly mode
cmap w!! w !sudo tee %

set number ruler

" only case sensitive if a capital letter is used
set ignorecase smartcase
set autoread

" use tmp folder for swp files
set directory^=$HOME/.vim/tmp//

" plugin manager and fuzzy file searching
set rtp+=~/.vim/bundle/Vundle.vim,/usr/local/opt/fzf

let g:go_fmt_command = "goimports"
let g:syntastic_yaml_checkers = ['yamllint']

call vundle#begin()

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

Plugin 'VundleVim/Vundle.vim'

" use <c-hjkl> for movement between vim and tmux
Plugin 'christoomey/vim-tmux-navigator'

Plugin 'fatih/vim-go'

Plugin 'scrooloose/nerdtree'

Plugin 'crusoexia/vim-monokai'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'kaicataldo/material.vim'

" js
Plugin 'https://github.com/crusoexia/vim-javascript-lib'
Plugin 'gavocanov/vim-js-indent'
Plugin 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plugin 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plugin 'prettier/vim-prettier'
Plugin 'posva/vim-vue'

Plugin 'w0rp/ale'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'jiangmiao/auto-pairs'

if has('nvim')
    Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
else
    Plugin 'Shougo/deoplete.nvim'
    Plugin 'roxma/nvim-yarp'
    Plugin 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call vundle#end()

filetype plugin indent on

" Visuals
if has('termguicolors')
    set termguicolors " True colors
else
    set t_Co=256
endif

" material theme settings
let g:material_theme_style = 'palenight'
let g:material_terminal_italics = 1

" set color scheme
set background=dark
colorscheme material 

au BufNewFile,BufRead *.vue setf vue

map <C-n> :NERDTreeToggle<CR>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" tab complete and cycle 
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
