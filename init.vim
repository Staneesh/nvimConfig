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
" rust auto-indenting
" Plug 'rust-lang/rust.vim'
" auto-closing opened brackets 
"Plug 'rstacruz/vim-closer'
" Vim HardTime - disabling arrows and stupid movement options for 
" the sake of learning
" Plug 'takac/vim-hardtime'
" C++ completion for YCM?
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction



set termguicolors

" autoindent rust code on buffer save
" let g:rustfmt_autosave = 1

" set colorscheme
colorscheme gruvbox

" set background theme
set background=dark

" close the YCM scratch buffer automatically after a word is completed
autocmd CompleteDone * pclose

" this splits the window in half at startup
" au VimEnter * split

" this is for YCM (rust) - shows it the rust language idk
" let g:ycm_rust_src_path = '/usr/local/rust/src'

" this allows for inserting new lines without enering
" insert mode. 'timeoutlen' shortens the time the user
" has to wait after pressing just 'o' to enter insert mode.
nmap oo m'o<Esc>'' 
nmap OO m'O<Esc>''
set timeoutlen=200

nnoremap ZZ :wqa<CR>

" auto-closing opened brackets
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O
" auto indent when braces are entered
inoremap <expr> <cr> getline(".")[col(".")-2:col(".")-1]=="{}" ? "<cr><esc>O" : "<cr>"

" enable vim-hardtime by default
" let g:hardtime_default_on = 1
" disable YCM C++ annoying popup 
" let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'

" nerdtree on startup
" autocmd VimEnter * NERDTree | wincmd p

" bg tansparent
hi Normal guibg=NONE ctermbg=NONE
