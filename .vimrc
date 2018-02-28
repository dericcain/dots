set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
Plugin 'dracula/vim'
Plugin 'trevordmiller/nova-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'sheerun/vim-polyglot'

" Editing
Plugin 'tpope/vim-commentary'
Plugin 'mattn/emmet-vim'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'yggdroot/indentline'
Plugin 'valloric/matchtagalways'

" IDE like stuff here
Plugin 'ternjs/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Colorscheme here =================================================================
colorscheme nova
syntax enable 			" enable syntax highlighting

" Plugins stuff ====================================================================
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


set tabstop=2			" number of spaces per tab
set softtabstop=2		" number of spaces in tab when editing
set expandtab			" tabs are spaces

" UI Stuff ========================================================================
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Working in split screen mode
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" open splits more naturally
set splitbelow
set splitright

set colorcolumn=120 " Show right margin line
set showcmd   " show command in bottom bar
set number      		" turns on line numbers
set relativenumber " try this out for awhile
filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for the command menu
set lazyredraw " redraw only when need to
set showmatch " highlight matching brackets and parens
set sidescroll=1                      " smoother horizontal scrolling

" Add some pretty italics
hi htmlArg gui=italic
hi Comment gui=italic
hi Type    gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic

" MatchTagAlways stuff
let g:mta_use_matchparen_group=0
let g:mta_set_default_matchtag_color=0
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen

" Add airiline buffer
let g:airline#extensions#tabline#fnamemod = ':t' " show filename
let g:airline_theme="murmur"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Search stuff
set incsearch " search as characters are entered
set hlsearch " highlight matches

" Folding
set foldenable " enable folding
set foldlevelstart=10 " open most folds be default
set foldnestmax=10 " 10 nested fold max
set foldmethod=indent " fold based on indent level

" Mappings ==================================

" Some other custom stuff
map <C-n> :NERDTreeToggle<CR>

" Movement

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

" toggle tagbar
nmap <F8> :TagbarToggle<CR>

