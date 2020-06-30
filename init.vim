" enable syntax highlighting
syntax on

" indent parameters
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent

" line numbering ON
set nu
" relative line numbers 
set relativenumber

" incremental search ON
set incsearch

" dont highlight matches in searching
set nohlsearch

call plug#begin()
" colorscheme
Plug 'morhetz/gruvbox'
" code completer/linter
Plug 'git@github.com:Valloric/YouCompleteMe.git'

Plug 'rust-lang/rust.vim'
call plug#end()

let g:rustfmt_autosave = 1

" set colorscheme
colorscheme gruvbox

" set background theme
set background=dark

" this splits the window in half at startup
au VimEnter * vsplit

" this is for YCM (rust) - shows it the rust language idk
let g:ycm_rust_src_path = '/usr/local/rust/src'

" this allows for inserting new lines without enering
" insert mode. 'timeoutlen' shortens the time the user
" has to wait after pressing just 'o' to enter insert mode.
nmap oo m'o<Esc>'' 
nmap OO m'O<Esc>''
set timeoutlen=200
