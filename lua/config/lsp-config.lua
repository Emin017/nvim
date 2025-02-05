-- lsp-config.lua

-- setup nixd for nix language server
require 'lspconfig'.nixd.setup {
	cmd = { "nixd" },
	filetypes = { "nix" },
	root_dir = require 'lspconfig'.util.root_pattern("flake.nix", ".git"),
	single_file = true,
}

-- setup rust_analyzer for rust language server
require 'lspconfig'.rust_analyzer.setup({
	on_attach = function(client, bufnr)
		vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
	end
})

-- https://medium.com/@shaikzahid0713/code-completion-for-neovim-6127401ebec2
-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase

local lsp = require('lsp-zero')
lsp.preset('recommended')

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	update_in_insert = false,
	underline = true,
	severity_sort = false,
	float = true,
})
