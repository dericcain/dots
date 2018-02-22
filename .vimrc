colorscheme seagrey-dark 

syntax enable 			" enable syntax highlighting

set tabstop=2			" number of spaces per tab
set softtabstop=2		" number of spaces in tab when editing
set expandtab			" tabs are spaces

" UI Stuff
let g:seagrey_dark_LineNr='off'

set showcmd   " show command in bottom bar
set number      		" turns on line numbers
set relativenumber    		" sets the surrouding line numbers relative to the current line number
filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for the command menu
set lazyredraw " redraw only when need to
set showmatch " highlight matching brackets and parens

" Search stuff
set incsearch " search as characters are entered
set hlsearch " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable " enable folding
set foldlevelstart=10 " open most folds be default
set foldnestmax=10 " 10 nested fold max

" space open/closes folds
nnoremap <space> za

set foldmethod=indent " fold based on indent level

" Movement

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to the beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
 
