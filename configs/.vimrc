set nocompatible
filetype off

"set termguicolors
set hidden

let g:ale_completion_enabled = 1

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'w0rp/ale'
Plugin 'itchyny/lightline.vim'
Plugin 'maximbaz/lightline-ale'
Plugin 'luochen1990/rainbow'
Plugin 'morhetz/gruvbox'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe' 
Plugin 'Rykka/colorv.vim'
call vundle#end()

filetype plugin indent on 
set encoding=utf-8
syntax on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

set autoindent
set expandtab

set smartindent
set mouse=a
set laststatus=2
set tabstop=4
set shiftwidth=4

set ruler
set colorcolumn=80

set number
set list

set ttyfast
set visualbell
set t_vb=

set background=dark
let g:gruvbox_contrast_dark = 'dark'
colorscheme gruvbox
set cursorline
highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
"hi Normal guibg=NONE ctermbg=NONE

set termguicolors
let &t_8f = "\e[38;2;%lu;%lu;%lum"
let &t_8b = "\e[48;2;%lu;%lu;%lum"

let g:rainbow_active = 1

let g:lightline = {
    \ "colorscheme": 'wombat',
    \ }

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }

let g:lightline.active = { 'right': [
            \ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ],
            \ ['lineinfo' ], [ 'percent' ],
            \ [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ]
            \ ] }

let g:ale_linters = { 'python': ['flake8'] }

let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options = '-m flake8 --select=E9'
let g:ale_python_pylint_executable = 'python3'

let g:lightline#ale#indicator_checking = "\uf110 "
let g:lightline#ale#indicator_warnings = "\uf071 "
let g:lightline#ale#indicator_errors = "\uf05e "
let g:lightline#ale#indicator_ok = "\uf00c "

"command SW w !sudo tee "%" > /dev/null

map <C-o> :NERDTreeToggle<CR>
map <C-l> :so ~/.vimrc<CR>
noremap <Leader>s :update<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"let g:gruvbox_termcolors=16

"set t_ut=
