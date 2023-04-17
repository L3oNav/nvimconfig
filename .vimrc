set number
set tabstop=4
set mouse=a
set numberwidth=1
set clipboard=unnamed
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
so ~/.vim/plugins.vim
so ~/.vim/maps.vim
so ~/.vim/plugin-config.vim
" dark mode
set background=dark
highlight CopilotSuggestion guifg=#74d8b8 guibg=#1c1c1c
colorscheme gruvbox
highlight Comment cterm=italic guifg=#6ab3eb
" Searching
let g:python3_host_prog = "./.env/bin/python3.10"
lua require('lsp-config')
" =========================================
" |----------lsp-configuration------------|
" =========================================
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
