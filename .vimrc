"Gurbzy
set tabstop=4
set shiftwidth=4
set ai
syntax on
set cursorline
set number
set background=dark
set noswapfile
set autowriteall
set relativenumber
colorscheme retrobox

let mapleader =  ','

nnoremap <Leader>w <C-w>w

call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/vim-easy-align'
call plug#end()

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" ALE
let g:ale_linters_explicit = 1  
let g:ale_fix_on_save = 1      
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_save = 1

let g:ale_linters = {
\   'c': ['gcc'],
\   'cpp': ['g++'],
\   'python': ['flake8', 'mypy'],
\	'java': ['javac'],
\}


nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l
