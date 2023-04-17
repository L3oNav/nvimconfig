call plug#begin('~/.vim/plugged')
" LSP
"Plug 'neovim/nvim-lspconfig'
"Plug 'haorenW1025/completion-nvim'
Plug 'nvim-treesitter/completion-treesitter'
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'jose-elias-alvarez/null-ls.nvim'
"Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/cmp-path'
"Plug 'hrsh7th/cmp-cmdline'
"Plug 'hrsh7th/nvim-cmp'
"Plug 'L3MON4D3/LuaSnip'
"Plug 'saadparwaiz1/cmp_luasnip'
"Plug 'hrsh7th/cmp-vsnip'
"Plug 'hrsh7th/vim-vsnip'
"status bar
" Themes
Plug 'ellisonleao/gruvbox.nvim'
Plug 'gryf/wombat256grf'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
" Tree
"Plug 'scrooloose/nerdtree'
Plug 'kyazdani42/nvim-tree.lua'
" Sintax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
" typing
Plug 'jparise/vim-graphql'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-commentary'
" tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
" autocomplete
Plug 'sirver/ultisnips'
" test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'
" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
" git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'github/copilot.vim'

call plug#end()

