set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'w0rp/ale'
Plugin 'mattn/emmet-vim'
Plugin 'dracula/vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Plugins stuff
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'

" emmet plugin stuff
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

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
 
