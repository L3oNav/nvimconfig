let mapleader=" "

" testing
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>


" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" quick semi
nnoremap <Leader>; $a;<Esc>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" shorter commands
cnoreabbrev blame Gblame
cnoreabbrev diff Gdiff

" plugs
map <Leader>p :Files<CR>
map <Leader>ag :Ag<CR>
nnoremap <Leader>Z :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
"LSP maps
nnoremap <silent> cd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> cD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> cr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> ci <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
"CoC
"map <silent> cd <Plug>(coc-definition)
"nmap <silent> ct <Plug>(coc-type-definition)
"nmap <silent> ci <Plug>(coc-implementation)
"nmap <silent> cr <Plug>(coc-references)
" diagnostics
"nnoremap <Leader>dia  :<C-u>CocList diagnostics<cr>
nnoremap <leader>kp :let @*=expand("%")<CR>

" tabs navigation
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>
:imap ii <Esc>

" buffers
map <Leader>o :Buffers<cr>

" faster scrolling
nnoremap <silent> <C-e> 10<C-e>
nnoremap <silent> <C-y> 10<C-y>
nmap <Leader>s <Plug>(easymotion-s2)

nnoremap <Leader>G :G<cr>
nnoremap <Leader>gp :Gpush<cr>
nnoremap <Leader>gl :Gpull<cr>

nnoremap <Leader>x :!node %<cr>

set splitright
