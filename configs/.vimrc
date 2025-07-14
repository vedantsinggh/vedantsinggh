set nocompatible
filetype plugin indent on
set number
set relativenumber
set mouse=a
set clipboard=unnamedplus
set encoding=utf-8
set backspace=indent,eol,start
set updatetime=300
set hidden
set lazyredraw
set ttyfast

let mapleader = ","

call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|node_modules|dist|build)|\.DS_Store$'

nnoremap <leader>f :Files<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>h :History<CR>

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/*"'

let g:coc_global_extensions = ['coc-snippets', 'coc-pyright', 'coc-tsserver']

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

nnoremap <silent> K :call CocActionAsync('doHover')<CR>

autocmd BufWritePre *.js,*.ts,*.py,*.c,*.cpp,*.h :silent! call CocAction('format')

inoremap <silent><expr> <C-Space> coc#refresh()
colorscheme habamax

set termguicolors
set background=dark
colorscheme desert

highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE

