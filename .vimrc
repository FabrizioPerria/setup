filetype off                  " required

set t_Co=256
colorscheme gruvbox
set background=dark
" Flag unnecessary whitespace
highlight BadWhitespace ctermbg=red guibg=red
match BadWhitespace /\s\+$/

" Enable folding with spacebar
set foldmethod=indent
" set foldmarker={,}
" set foldtext=substitute(getline(v:foldstart),'{.*','{...}',)
set foldlevelstart=20
nnoremap <space> za

syntax on
set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'tweekmonster/gofmt.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-utils/vim-man'
Plugin 'mbbill/undotree'
Plugin 'sheerun/vim-polyglot'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'morhetz/gruvbox'
Plugin 'sainnhe/gruvbox-material'
Plugin 'phanviet/vim-monokai-pro'
Plugin 'vim-airline/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/taglist.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-liquid'

call vundle#end()            " required
filetype plugin indent on    " required

let g:gruvbox_invert_selection='0'
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

set updatetime=300
set timeoutlen=500
set cursorline
set iskeyword+=-
set nowrap
set ruler
set encoding=utf-8
set shell=bash\ -l
set nocompatible              " be iMproved, required
set number
set relativenumber
set showcmd
set cursorline
set path+=**
set wildmenu
set showmatch
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set expandtab
set autoindent
set fileformat=unix
set rtp+=/usr/local/opt/fzf
set splitbelow
set splitright
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set list
set tags=tags
autocmd BufNewFile,BufRead *.metafile set filetype=yaml
py3 import os; sys.executable=os.path.join(sys.prefix, 'python.exe')
map <C-n> :NERDTreeToggle<CR>
map <C-f> :Files<CR>
