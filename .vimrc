set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set termguicolors
so ~/.vim/plugins.vim
so ~/.vim/maps.vim
so ~/.vim/plugin-config.vim
"colorscheme edge
"let g:edge_style = 'neon'
"let g:edge_transparent_background=1
"let g:edge_sign_column_background='none'
let g:tokyonight_enable_italic=1
let g:tokyonight_transparent_background=1
let g:tokyonight_cursor='green'
let g:tokyonight_current_word='italic'
let g:airline_theme='tokyonight'
colorscheme tokyonight
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode
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

" =========================================
" |																				|
" |----------lsp-configuration------------|
" |																				|
" =========================================

lua require('settings')
