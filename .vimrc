set nocompatible
filetype off

syntax enable

set number
set ruler
set backspace=indent,eol,start

" Tab settings
set shiftwidth=4
set tabstop=4
set expandtab

" Font
set guifont=DejaVu_Sans_Mono_for_Powerline:h10

" Swaps
set backupdir=~/vimfiles/swap
set directory=~/vimfiles/swap


" *        *
"  *  *   *
"   **  **
"
"     ***  "
"    *   * "
"    *   * "
"     ***  "


set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$HOME/vimfiles/bundle/')
    Plugin 'VundleVim/Vundle.vim'

    Plugin 'flazz/vim-colorschemes'
    Plugin 'scrooloose/nerdtree'
    Plugin 'kien/ctrlp.vim'

    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'

    Plugin 'ervandew/supertab'    

    "Plugin 'artur-shaik/vim-javacomplete2'
call vundle#end()
filetype plugin indent on

" vim-airline
set laststatus=2

" vim-colorsschemes
colorscheme molokai

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Keymappings
map <C-n> :NERDTreeToggle<CR>
map <C-s> :w<CR>
" Omni complete maps
nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)

" Java omni complete
" autocmd FileType java setlocal omnifunc=javacomplete#Complete
" Java omnicomplete is very slow and doesn't function very well.
