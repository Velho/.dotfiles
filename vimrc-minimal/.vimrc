set nocompatible 
filetype plugin on

set modeline 

set nu
set relativenumber

" tab settings if no editorconfig available
set sw=4
set ts=4
set expandtab

set noswapfile " disable swap
set nobackup " disable backup

" disable beeps and boops
set noeb vb t_vb=

call plug#begin()
	" themes
	Plug 'junegunn/seoul256.vim'
	Plug 'NLKNguyen/papercolor-theme'
    Plug 'dracula/vim'

	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-sensible'

	Plug 'airblade/vim-gitgutter'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'editorconfig/editorconfig-vim'
call plug#end()

" set light theme with the lightes bg
" let g:seoul256_light_background = 256
" colo seoul256-light

" set font
set guifont=FiraMono\ Nerd\ Font\ 12

set t_Co=256   " This is may or may not needed.

set background=light
colorscheme PaperColor

set laststatus=2

" key remaps
nmap <leader>pv :Ex<CR>
nmap <leader>tn :tabn<CR>
nmap <leader>tp :tabp<CR>

nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprev<CR>

nmap <leader>sb :Buffers<CR>
nmap <leader>sf :Files<CR>

nmap <leader>sg :Rg<CR>

function! RgFromReg()
    let l:search_term = getreg('a')
    execute 'Rg' l:search_term
endfunction

nnoremap <leader>rg :call RgFromReg()<CR>
nnoremap <leader>c  "a

