filetype plugin indent on
colorscheme monokai
syntax on

set autoread
set autowrite
set nobackup
set nowb
set noswapfile

set number

set wildmenu
set wildignore=*.o,*~,*.pyc,*.aux
set wildmode=longest,list
set magic

set showcmd
set showmatch
set mat=2
set incsearch
set ignorecase
set smartcase
set hlsearch
nnoremap \ :noh <cr>

set so=5
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set nojoinspaces

set autoindent
set smartindent

set title
set title titlestring=%m%t

set t_Co=256
set laststatus=2

set undodir=$HOME/.vim-undo
set undofile

nnoremap <space> :
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-n> :tabp<cr>
nnoremap <C-m> :tabn<cr>
nnoremap <A-n> :tabm -1<cr>
nnoremap <A-m> :tabm +1<cr>
inoremap § <esc>
vnoremap § <esc>

map <F9> :set invnumber <cr>

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

set shell=/bin/bash
set statusline=%r%f%m%=%l/%L\ %y

let fortran_free_source=1

if filereadable(".vim.local")
  so .vim.local
endif
if filereadable("vim.local")
  so vim.local
endif

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

augroup filetype_tsv
au BufReadPost,BufNewFile *.tsv setlocal noexpandtab shiftwidth=20 softtabstop=20 tabstop=20
augroup END

augroup filetype_exec
au FileType sh      nnoremap K :w !bash<cr>
au FileType sh      nnoremap L :.w !bash<cr>
au FileType sh      vnoremap L :w !bash<cr>
au FileType python  nnoremap K :w !python<cr>
au FileType julia   nnoremap K :w !julia<cr>
au Filetype perl    nnoremap K :w !perl<cr>
au Filetype gnuplot nnoremap K :!gnuplot %<cr>
augroup END
