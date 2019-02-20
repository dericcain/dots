set nocompatible              " be iMproved, required
filetype off                  " required


" Colorscheme here =================================================================
syntax enable 			" enable syntax highlighting


set tabstop=2			" number of spaces per tab
set softtabstop=2		" number of spaces in tab when editing
set expandtab			" tabs are spaces
set backspace=indent,eol,start " Make backspase work how we want it to work
let mapleader = ',' " The default leader is \ but we want to use , instead


" UI Stuff ========================================================================
set t_CO=256 " Use 256 colors
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set linespace=15 " This is macvim specific
set colorcolumn=100 " Show right margin line
set showcmd   " show command in bottom bar
set number      		" turns on line numbers
set wildmenu " visual autocomplete for the command menu
set lazyredraw " redraw only when need to
set showmatch " highlight matching brackets and parens
set sidescroll=1                      " smoother horizontal scrolling
filetype indent on " load filetype-specific indent files
set cursorline 
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R


" Add some pretty italics
hi htmlArg gui=italic
hi Comment gui=italic
hi Type    gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic


" Search stuff
set incsearch " search as characters are entered
set hlsearch " highlight matches

" Folding
set foldenable " enable folding
set foldlevelstart=10 " open most folds be default
set foldnestmax=10 " 10 nested fold max
set foldmethod=indent " fold based on indent level

" Line indention stuff
let g:indentLine_color_gui = '#556872'
let g:indentLine_color_term = 239
let g:indentLine_bgcolor_gui = '#3C4C55'
let g:indentLine_faster = 1

" .editorconfig stuff here
let g:EditorConfig_exclude_patterns = ['fugitive://.*']





" Split management ================================================================

nnoremap <C-J> <C-W><C-J> " Move to lower split
nnoremap <C-K> <C-W><C-K> " Move to above split
nnoremap <C-L> <C-W><C-L> " Move to left split
nnoremap <C-H> <C-W><C-H> " Move to right split

" open splits more naturally
set splitbelow
set splitright





" Mappings ========================================================================

" Edit the vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>


" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to the beginning/end of line
nnoremap B ^
nnoremap E $

" space open/closes folds
nnoremap <space> za

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" for command mode
nnoremap <S-Tab> <<

" for insert mode
inoremap <S-Tab> <C-d>

" map method search
nmap <c-R> :CtrlPBufTag<cr>

