set nocompatible
filetype plugin on

set number
set relativenumber

set shiftwidth=4
set tabstop=4
set expandtab

set noswapfile

set guifont=FiraCode\ NFM\ 12
set backspace=indent,eol,start  " more powerful backspacing

" set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set listchars=tab:\ \ ,trail:·,eol:¬,nbsp:_
set list " nolist can be used to hide listchars

call plug#begin()
    Plug 'preservim/nerdtree'

    Plug 'mhinz/vim-signify'
    Plug 'mhinz/vim-startify'
    Plug 'tpope/vim-surround'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'kien/ctrlp.vim'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }

    " LSP
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    Plug 'keremc/asyncomplete-clang.vim'
    Plug 'mattn/vim-lsp-settings'

    Plug 'wellle/context.vim'

    Plug 'tpope/vim-fugitive'

call plug#end()

colorscheme embark

" NERDTree keymaps.
" nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>

" autocmd VimEnter * NERDTree | wincmd p

" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" disable folding with
" let g:lsp_fold_enabled = 0
set foldmethod=expr
  \ foldexpr=lsp#ui#vim#folding#foldexpr()
  \ foldtext=lsp#ui#vim#folding#foldtext()

" include all user configs
runtime vim-lsp.vim
runtime asyncomplete.vim
runtime asyncomplete-clang.vim

" FZF
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   'rg --column --line-number --no-heading --color=always -- '.shellescape(<q-args>), 1,
"   \   fzf#vim#with_preview(), <bang>0)

" Use pv to open the explorer.
nnoremap <leader>pv :Ex<CR>
nnoremap <leader>pt :term<CR>

" display buffers project-buffers
nnoremap <leader>pb :Buffers<CR>

" scrolling only for insert mode
inoremap <buffer> <expr><c-f> lsp#scroll(+4)
inoremap <buffer> <expr><c-d> lsp#scroll(-4)

