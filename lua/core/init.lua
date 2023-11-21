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

require "config.alpha-config"
-- require "config.keymap"
require "config.lsp-config"
require "config.mason"
require "config.telescope"
require "config.toggleterm-config"
require "config.whichkey"
require "config.coc"

-- set clipboard+=unnamedplus
vim.cmd [[set clipboard+=unnamedplus]] 
vim.cmd [[set shortmess+=c]] 
vim.cmd [[set relativenumber]] 
vim.cmd [[set incsearch]] 
-- set tab as 4 space
vim.cmd [[set smartindent]]
vim.cmd [[set shiftwidth=4]]
vim.cmd [[set tabstop=4]]
vim.wo.number = true

-- tokynight-night theme
vim.cmd.colorscheme "tokyonight-night"
