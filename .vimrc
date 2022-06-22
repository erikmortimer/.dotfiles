syntax on

" Setting my leader key
let mapleader="\<Space>"

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
    "Plug 'morhetz/gruvbox'
    "Plug 'fatih/vim-go', { 'do': 'GoInstallBinaries' }
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    call plug#end()
    "colorscheme gruvbox
endif

" Create zettel function
function! NewZettel()
    let l:title = input("Zettle Title: ")
    let l:date = strftime("%Y%m%d%H%M%S")
    call mkdir(date . "_" . title)
    call chdir(date . "_" . title)
    call system("touch README.md")
    execute("edit README.md")
endfunction

nmap <leader>n :call NewZettel()<CR>

