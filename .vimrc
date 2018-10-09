set nocompatible

filetype off
syntax on

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

let g:go_fmt_command = "goimports"

set number
set ruler

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set t_Co=256

Plugin 'VundleVim/Vundle.vim'

Plugin 'fatih/vim-go'

Plugin 'scrooloose/nerdtree'

Plugin 'crusoexia/vim-monokai'

Plugin 'https://github.com/crusoexia/vim-javascript-lib'
Plugin 'gavocanov/vim-js-indent'
Plugin 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plugin 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plugin 'prettier/vim-prettier'
Plugin 'posva/vim-vue'
Plugin 'w0rp/ale'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'jiangmiao/auto-pairs'
Plugin 'skielbasa/vim-material-monokai'

call vundle#end()

filetype plugin indent on

colorscheme monokai

au BufNewFile,BufRead *.vue setf vue

map <C-n> :NERDTreeToggle<CR>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
