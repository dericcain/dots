set nocompatible              " be iMproved, required
filetype off                  " required

" Source our plugins file
so ~/.vim/plugins.vim





" Colorscheme here =================================================================
colorscheme nova
syntax enable 			" enable syntax highlighting





" Plugins stuff ====================================================================
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git|release\|build\'
let g:ctrlp_buftag_types = { 'javascript': '--language-force=javascript --javascript-types=fcmv' }

" emmet plugin stuff
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_expandabbr_key = '<Tab>'
let g:use_emmet_complete_tag = 1
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" Close tag plugin stuff
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.js"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_linters = {
\   'javascript': ['eslint'],
\ }
let g:ale_fixers = {
\   'javascript': ['prettier-eslint'],
\ }
let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_javascript_eslint_use_global = 1

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
set colorcolumn=120 " Show right margin line
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

" Edit plugins.vim
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>

" Some other custom stuff
map <C-n> :NERDTreeToggle<CR>

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

" for command mode
nnoremap <S-Tab> <<

" for insert mode
inoremap <S-Tab> <C-d>

" map method search
nmap <c-R> :CtrlPBufTag<cr>



" Auto-Commands ======================================================================
" Automatically source the .vimrc on save
augroup autosourcing
        autocmd!
        autocmd BufWritePost .vimrc source %
augroup END

" Autoupdate other buffers when vimrc is updated
au FocusGained,BufEnter * :checktime
