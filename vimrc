set nocompatible
set encoding=utf-8
call plug#begin('~/.vim/plugged')
 Plug 'git@github.com:ctrlpvim/ctrlp.vim.git' "butuh Ctrl+P nya sublim jadi pake ini ^_^
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
 Plug 'jistr/vim-nerdtree-tabs'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'Raimondi/delimitMate'
 Plug 'git@github.com:Shougo/neocomplete.vim.git'
 Plug 'scrooloose/syntastic'
 Plug 'nvie/vim-flake8'
 Plug 'airblade/vim-gitgutter'
 Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'git@github.com:suan/vim-instant-markdown.git'
 Plug 'git@github.com:tpope/vim-surround.git'
call plug#end()
cmap w!! w !sudo tee > /dev/null %<CR>
syntax on "buat deteksi syntax 
colorscheme lucius
filetype plugin indent on
set tabstop =4 "tab indent
set shiftwidth=4 "indent pake 4 space
set expandtab "don't use actual tab carachter bro (ctrl-v)
set number " show line number on left
set autoindent
set smartindent 
set nowrap
set ignorecase "jadi kalau mau nyari huruf/kata dibuat gak case sensitive
set hlsearch "ketika mencari huruf/kata bakal ada highlight nya gan, kalau mau hilangin highlight pake :noh
set incsearch
set pastetoggle=<f5> "to stop indeting when pasting with the mouse, then try hitting F5 while in insert mode or :set paste
set backup
set mouse=a "biar gak lupa sama mouse saat coding
set showmatch
set cursorline
set clipboard=unnamed
"highlight CursorLine cterm=none ctermbg=darkblue  ctermfg=none
set cursorcolumn
set ttyfast
set ttymouse=xterm2
" Set trailing space
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" backup rules
set backup " enable backup files (.txt~)
set undofile " enable persistent undo
set backspace=2
silent execute '!mkdir -p $HOME/.vim/tmp/backup'
set backupdir=$HOME/.vim/tmp/backup " where to store backup
silent execute '!mkdir -p $HOME/.vim/tmp/swap'
set directory=$HOME/.vim/tmp/swap " where to store swap
silent execute '!mkdir -p $HOME/.vim/tmp/views'
set viewdir=$HOME/.vim/tmp/views " where to store view
silent execute '!mkdir -p $HOME/.vim/tmp/undo'
set undodir=$HOME/.vim/tmp/undo " where to store undo 
set timeoutlen=1000 ttimeoutlen=0 "biar lebih cepet ketika mencet capslock yang jadi esc
noremap <C-l> gt
noremap <C-h> gT
nnoremap ; :
inoremap jj <ESC>

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"snipet biar kaya sublim :/
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"Set delimitMate
set backspace=2
let delimitMate_expand_cr = 1
" Set NerdTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeMouseMode=2
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
" let g:NERDTreeMapOpenInTabSilent = '<2-LeftMouse>'
autocmd vimenter * NERDTree
" Set NERDTreeTabsToggle
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
" set neocomplete
let g:neocomplete#enable_at_startup = 1
" Set checking and highlighting python
let python_higlight_all=1
"set airlines
let g:airline#extentions#tabline#enabled=1
" Markdownpreview
let g:instant_markdown_autostart = 1
