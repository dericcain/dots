" These are all of the plugins

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'trevordmiller/nova-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'sheerun/vim-polyglot'

" Editing
Plugin 'jiangmiao/auto-pairs'
Plugin 'yggdroot/indentline'
Plugin 'valloric/matchtagalways'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

