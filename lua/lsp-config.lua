--local null_ls = require("null-ls")
--local lspconfig = require("lspconfig")
--local cmp = require'cmp'
--local buf_map = function(bufnr, mode, lhs, rhs, opts)
--    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts or {
--        silent = true,
--    })
--end

--local on_attach = function(client, bufnr)
    --vim.cmd("command! LspDef lua vim.lsp.buf.definition()")
    --vim.cmd("command! LspFormatting lua vim.lsp.buf.formatting()")
    --vim.cmd("command! LspCodeAction lua vim.lsp.buf.code_action()")
    --vim.cmd("command! LspHover lua vim.lsp.buf.hover()")
    --vim.cmd("command! LspRename lua vim.lsp.buf.rename()")
    --vim.cmd("command! LspRefs lua vim.lsp.buf.references()")
    --vim.cmd("command! LspTypeDef lua vim.lsp.buf.type_definition()")
    --vim.cmd("command! LspImplementation lua vim.lsp.buf.implementation()")
    --vim.cmd("command! LspDiagPrev lua vim.diagnostic.goto_prev()")
    --vim.cmd("command! LspDiagNext lua vim.diagnostic.goto_next()")
    --vim.cmd("command! LspDiagLine lua vim.diagnostic.open_float()")
    --vim.cmd("command! LspSignatureHelp lua vim.lsp.buf.signature_help()")
    --buf_map(bufnr, "n", "gd", ":LspDef<CR>")
    --buf_map(bufnr, "n", "gr", ":LspRename<CR>")
    --buf_map(bufnr, "n", "gy", ":LspTypeDef<CR>")
    --buf_map(bufnr, "n", "K", ":LspHover<CR>")
    --buf_map(bufnr, "n", "[a", ":LspDiagPrev<CR>")
    --buf_map(bufnr, "n", "]a", ":LspDiagNext<CR>")
    --buf_map(bufnr, "n", "ga", ":LspCodeAction<CR>")
    --buf_map(bufnr, "n", "<Leader>a", ":LspDiagLine<CR>")
    --buf_map(bufnr, "i", "<C-x><C-x>", "<cmd> LspSignatureHelp<CR>")
    --if client.resolved_capabilities.document_formatting then
	--vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    --end
--end

--lspconfig.pyright.setup{
  --on_attach = on_attach,
  --settings={
  --python = {
    --pythonPath="/usr/bin/python3.10",
  --},
    --pyright = {}
  --}
--}

--null_ls.setup({
    --sources = {
        --null_ls.builtins.diagnostics.eslint,
        --null_ls.builtins.code_actions.eslint,
        --null_ls.builtins.formatting.prettier, -- markdown formatting
    --},
    --on_attach = on_attach,
--})

vim.o.completeopt = "menuone,noinsert,noselect"

--local t = function(str)
  --return vim.api.nvim_replace_termcodes(str, true, true, true)
--end

local check_back_space = function()
	local col = vim.fn.col('.') - 1
	if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
	return true
	else
	return false
	end
end

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "javascript", "python", "lua", "vim", "vimdoc", "query", "go", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "c" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "c_cpp"},
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 200 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
require('lualine').setup{
	options = {
		theme = 'gruvboxdark',
		section_separators = { right = '|' },
	    component_separators = { right = '|' }
	}
}
require'nvim-tree'.setup {
  disable_netrw        = false,
  hijack_netrw         = true,
  auto_reload_on_write = true,
  open_on_tab          = false,
  hijack_cursor        = false,
  update_cwd           = false,
  hijack_unnamed_buffer_when_opening = true,
  hijack_directories   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 10,
  },
  view = {
    width = 30,
    hide_root_folder = false,
    side = 'left',
    mappings = {
      custom_only = false,
      list = {
        {key="s",  action="vsplit"},
        {key="S",  action="split"}
      }
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    change_dir = {
      global = false,
    },
    open_file = {
      quit_on_open = false,
    }
  }
}

