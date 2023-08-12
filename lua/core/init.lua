-- use lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	{ import = "plugins"  }
})
-- config status bar
require('lualine').setup()

require'hop'.setup()

require "config.whichkey"
require "config.alpha-config"
require "config.lsp-config"

-- set clipboard+=unnamedplus
vim.cmd [[set clipboard+=unnamedplus]] 
vim.cmd [[set shortmess+=c]] 
vim.cmd [[set relativenumber]] 
vim.cmd [[set incsearch]] 
vim.wo.number = true

-- tokynight-night theme
vim.cmd.colorscheme "tokyonight-night"
