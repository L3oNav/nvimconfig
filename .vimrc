set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf8
set showmatch
set sw=2
set relativenumber
set termguicolors
so ~/.vim/plugins.vim
so ~/.vim/maps.vim
so ~/.vim/plugin-config.vim
let g:tokyonight_style="night"
let g:tokyonight_transparent=1
let g:tokyonight_current_word="italic"
let g:tokyonight_italic_functions=1
let g:tokyonight_transparent_sidebar=1
colorscheme tokyonight
highlight Normal ctermbg=NONE
let g:python3_host_prog = '/usr/bin/python3'
"" Javascript
"autocmd bufnewfile,bufread *.tsx set filetype=typescript.tsx
"autocmd bufnewfile,bufread *.ts set filetype=typescript.tsx
"autocmd bufnewfile,bufread *.jsx set filetype=javascript.jsx
"autocmd bufnewfile,bufread *.js set filetype=javascript.jsx

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set laststatus=2
" =========================================
" |																				|
" |----------lsp-configuration------------|
" |																				|
" =========================================
lua require('lsp-config')
