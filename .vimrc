execute pathogen#infect()
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.fzf

filetype plugin indent on    " required

" general vim options
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
set t_Co=256
syntax on
cabbr te tabedit
set expandtab
set nocompatible
set tabstop=2
set shiftwidth=2
set showtabline=2
set cursorline
set relativenumber
set number
set numberwidth=5
set wrap
set backspace=0
set t_Co=256
set autoread " make vim reload if files changed

" buffer shortcuts
nnoremap <F5> :buffers<CR>:buffer<Space>
" buffers shown on top of window
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
set hidden
 " these replace buffer navigation, open and closing
nmap <leader>T :enew<cr>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Make splitting Vim windows easier
map <leader>s <C-W>s
map <leader>v <C-W>v

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" search / tags
set wildmenu
set showmatch
set incsearch
set hlsearch
set autochdir
set tags=./.git/tags;
nnoremap gV `[v`]
nnoremap <leader>. :CtrlPTag<cr>
set signcolumn=yes

if executable('rg')
  let g:ackprg = 'rg -S --no-heading --vimgrep'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

set background=dark
colorscheme uwu

" language specific highlighting
let python_highlight_all = 1

" ctrl p buffer navigation
map <Leader>b :CtrlPBuffer<CR>
map <Leader>p :CtrlP<CR>

" Ale linting / autocomplete
set omnifunc=ale#completion#OmniFunc " c-x c-o

" auto import ext modules
let g:ale_completion_autoimport = 1

" As-you-type autocomplete
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

" Ctrl left mouse goes to definition of function
nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>

" RUST ale stuff
let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }
let g:ale_linters = {'rust': ['analyzer']}
