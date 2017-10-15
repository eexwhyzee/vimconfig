set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Using mouse to resize splits
set mouse=n
set ttymouse=xterm2

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

" Python, PEP-008
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set textwidth=79
au BufRead,BufNewFile *.py,*.pyw set tabstop=4
au BufRead,BufNewFile *.py,*.pyw set softtabstop=4
au BufRead,BufNewFile *.py,*.pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set autoindent
au         BufNewFile *.py,*.pyw set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw let b:comment_leader = '#'

" JS, html, css
au BufNewFile,BufRead *.js, *.html, *.css;
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred

" Flag extraneous whitespaces
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

Plugin 'vim-scripts/indentpython.vim'

set encoding=utf-8

Bundle 'Valloric/YouCompleteMe'

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

Plugin 'scrooloose/syntastic'

Plugin 'nvie/vim-flake8'

let python_highlight_all=1
syntax on

Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif

call togglebg#map("<F5>")

Plugin 'scrooloose/nerdtree'

Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <C-n> :NERDTreeToggle<CR>

Plugin 'kien/ctrlp.vim'

set nu


Plugin 'tpope/vim-fugitive'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

set clipboard=unnamedplus

" Always show statusline
set laststatus=2

"Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

let g:ycm_server_python_interpreter = 'python3'



