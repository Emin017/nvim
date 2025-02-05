require("mason-lspconfig").setup {
	ensure_installed = {
		"clangd",
		"lua_ls",
		"marksman",
		"omnisharp",
		-- "verible"
	},
}
