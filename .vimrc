syntax on

" better command-line completion
set wildmenu

" automatically indent new lines
set autoindent

" faster scolling
set ttyfast

" allow sensing the filetype
filetype plugin on

set background=dark

" show command and insert mode
set showmode

" general settings
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set undodir=~/.vim/undodir
set undofile
set incsearch

" more risky, but cleaner imo
set nobackup
set noswapfile

" highlight search hits
set hlsearch
set incsearch
set linebreak

" theme/display settings
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" enable omni-completion
set omnifunc=syntaxcomplete#Complete

" function keys
nmap <F1> :set number!<CR> :set relativenumber!<CR>
" nmap <F2>
" nmap <F3>
" nmap <F4>
" nmap <F5>
nmap <F7> :set spell!<CR>

" enable vim-plug
if filereadable(expand("~/.vim/autoload/plug.vim"))
    call plug#begin()
    Plug 'morhetz/gruvbox'
    "Plug 'fatih/vim-go', { 'do': 'GoInstallBinaries' }
    call plug#end()
    colorscheme gruvbox
endif
