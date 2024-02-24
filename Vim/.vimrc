" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
"Plug 'tpope/vim-sensible'
"Plug 'junegunn/seoul256.vim'
"Plug 'kyoto-shift/film-noir'
"Plug 'roosta/srcery'
"Plug 'jaredgorski/fogbell'
Plug 'jacoborus/tender.vim'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
call plug#end()

scriptencoding uft-8

"set background=light
"hi clear

if exists("syntax_on")
	syntax reset
endif

"let g:colors_name="fpgbell_light"
"seoul256
"let g:seoul256_background = 234
"let g:seoul256_light_background = 234
"colo seoul256
"film-noir
"let g:film_noir_color='red'
"let g:film_noir_color='green'
"let g:film_noir_color='blue'


if (has("termguicolors"))
   set termguicolors
endif

" Theme
syntax enable
colorscheme tender


let g:airline_theme = 'tender'


" fix nerdtree session error
" set sessionoptions-=blank

" load in right order
autocmd VimEnter *
            \   if !argc()
autocmd VimEnter * if !argc() | Startify | endif
autocmd VimEnter * if !argc() | NERDTree | endif
autocmd VimEnter * if !argc() | wincmd w | endif



" fix N debug
set sessionoptions-=blank
set mouse=a
let g:NERDTreeNodeDelimiter="	"

" show line numbers
set autoindent
set expandtab
set number
set shiftwidth=2
set softtabstop=2


" set own keymapps
:nmap <C-f> :NERDTreeToggle<CR>
:imap <C-f> <ESC>:NERDTreeToggle<CR>

cabbrev <expr> q! getcmdtype() == ':' && getcmdline() == 'q!' ? 'qa!' : 'q!'
