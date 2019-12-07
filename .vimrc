set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" code complete
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'

" syntastic check
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/syntastic'

" colorscheme
Plugin 'altercation/vim-colors-solarized'
Plugin 'luochen1990/rainbow' , {'for': 'python'}
Plugin 'morhetz/gruvbox'

" code format
Plugin 'mindriot101/vim-yapf'

" file search
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

colorscheme gruvbox

" for code complete
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#show_call_signatures = 1


" for <leader>
let mapleader = ","
let g:mapleader = ","

" goto definition
let g:jedi#goto_definitions_command = ""
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_command = "<leader>d"

" file search
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" serach file in MRU
nmap <Leader>f :CtrlPMRUFiles<CR>
" search file in BUffer
nmap <Leader>b :CtrlPBuffer<CR>


set number
set cursorline
set fileencoding=utf-8
set fencs=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set history=500
let python_highlight_all=1
set background=dark

set t_Co=256
set laststatus=2
set viminfo+=!
set showmatch
set matchtime=5
set ignorecase
set hlsearch
set autoindent
set cindent
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set autochdir
set autoread

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd! FileType python match OverLength /\%89v.\+/
