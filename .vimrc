set number
set tabstop=4
set mouse=a
set numberwidth=1
"set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf8
set showmatch
set sw=4
set relativenumber
set lazyredraw
set laststatus=2
set termguicolors
set autoindent smartindent
set clipboard+=unnamedplus
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set background=dark
" dark mode
colorscheme gruvbox
so ~/.vim/plugins.vim
so ~/.vim/maps.vim
so ~/.vim/plugin-config.vim
highlight CopilotSuggestion guifg=#74d8b8 cterm=italic
highlight Comment cterm=italic guifg=#6ab3eb
" Searching
let g:python3_host_prog= "/usr/local/bin/python3.10"
" =========================================
" |----------lsp-configuration------------|
" =========================================
lua require('lsp-config')
